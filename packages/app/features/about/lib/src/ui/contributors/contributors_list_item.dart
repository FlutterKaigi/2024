import 'package:app_cores_core/util.dart';
import 'package:app_cores_designsystem/common_assets.dart';
import 'package:app_features_about/src/gen/l10n/l10n.dart';
import 'package:common_data/contributor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

const _imageSize = 56.0;
const _containerWidth = 18.0;
const _containerHeight = 18.0;

/// コントリビューター一覧のリストアイテム
class ContributorsListItem extends StatelessWidget {
  const ContributorsListItem({
    required this.contributor,
    super.key,
  });

  final Contributor contributor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = L10nAbout.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colorScheme.secondary),
      ),
      child: InkWell(
        onTap: () async {
          final url = Uri.parse(
            'https://github.com/${contributor.name}',
          );
          await launchInExternalApp(url);
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.network(
                    contributor.avatarUrl.toString(),
                    width: _imageSize,
                    height: _imageSize,
                    cacheWidth: _imageSize.toInt(),
                    cacheHeight: _imageSize.toInt(),
                    frameBuilder: (context, child, _, __) => _BorderedImage(
                      child: child,
                    ),
                    errorBuilder: (context, error, stackTrace) =>
                        _BorderedImage(
                      child: CommonAssets.logo.mainLogo.svg(
                        width: 32,
                        height: 32,
                      ),
                    ),
                    fit: BoxFit.cover,
                  ),
                  const Gap(12),
                  Text(
                    contributor.name,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              const Gap(12),
              Text(
                l.contributionsCount(
                  NumberFormat('#,###').format(contributor.contributionCount),
                ),
                style: theme.textTheme.titleMedium,
              ),
              const Gap(6),
              ContributionContainer(
                totalItemCount: contributor.contributionCount,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<Contributor>('contributor', contributor));
  }
}

class _BorderedImage extends StatelessWidget {
  const _BorderedImage({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Theme.of(context).colorScheme.surface,
      ),
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: child,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Widget>('child', child));
  }
}

class ContributionContainer extends StatelessWidget {
  const ContributionContainer({
    required int totalItemCount,
    super.key,
  }) : _totalItemCount = totalItemCount;

  // 表示したいアイテムの総数
  final int _totalItemCount;

  // 数値を分割し返却
  //
  // 文字列数が偶数の場合 - 2桁分割
  // 文字列数が奇数の場合 - 2桁分割と先頭部分を1桁分割
  List<String> _splitNumberIntoPairs(int number) {
    var strNumber = number.toString();
    final result = <String>[];

    // 奇数桁の場合は最初の1桁を別扱い
    if (strNumber.length % 2 != 0) {
      // 最初の1桁
      result.add(strNumber[0]);
      // 残りの部分
      strNumber = strNumber.substring(1);
    }
    // 2桁ずつ分割
    for (var i = 0; i < strNumber.length; i += 2) {
      result.add(strNumber.substring(i, i + 2));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    // 画面幅
    final screenWidth = MediaQuery.sizeOf(context).width;

    // 画面に収まる数を計算
    final itemsInRow = (screenWidth / _containerWidth).floor();

    // 画面に表示できる総数を計算（3列固定とする）
    final totalVisibleItems = itemsInRow * 3;

    // 画面に表示できない総数
    final overflowItemCount = _totalItemCount - totalVisibleItems;

    // 画面に表示できない総数を表示するかどうかを判定する
    bool shouldDisplayMoreItems(int index, int lastDigitCount) =>
        index >= (totalVisibleItems - lastDigitCount);

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: itemsInRow,
      ),
      itemCount: totalVisibleItems,
      itemBuilder: (context, index) {
        if (_totalItemCount > totalVisibleItems) {
          // 画面に表示されないcontribute数を分割した配列を取得
          final formattedOverflowCount = _splitNumberIntoPairs(
            overflowItemCount.toString().length.isOdd
                // overflowItemCountが奇数の場合、
                // 偶数のレイアウトと合わせるため明示的に余白分の数値を+1する
                ? overflowItemCount + 1
                : overflowItemCount,
          );
          final remainingItems = totalVisibleItems - index;
          // 分割した配列分の表示領域に達したかどうかの数値
          //
          // 0以下の場合 - 画面に表示されない総数をTextで表示
          // 1の場合かつ配列の先頭文字列数が1以外の場合 - [+]を表示
          // 1の場合かつ配列の先頭の文字列数が1の場合 - 余白を表示
          final remainingIndex = remainingItems - formattedOverflowCount.length;
          if (remainingIndex == 1) {
            if (formattedOverflowCount.first.length == 1) {
              return const SizedBox.shrink();
            }
            return const _PlusTextWidget();
          }
          if (shouldDisplayMoreItems(index, formattedOverflowCount.length)) {
            if (remainingIndex <= 0) {
              return _OverflowCountText(
                formattedOverflowCount[remainingIndex.abs()],
              );
            }
          }
        }

        return Container(
          margin: const EdgeInsets.all(1.5),
          height: _containerHeight,
          width: _containerWidth,
          decoration: BoxDecoration(
            color: index < _totalItemCount
                ? const Color(0xFF3AD353)
                : const Color(0xFF161B22),
            borderRadius: BorderRadius.circular(2),
          ),
        );
      },
    );
  }
}

class _OverflowCountText extends StatelessWidget {
  const _OverflowCountText(this._overflowCount);

  final String _overflowCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _containerHeight,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(
          // 表示文字数列が1の場合、余白が表示されているため明示的に文字列に+を付与
          _overflowCount.length == 1 ? '+$_overflowCount' : _overflowCount,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
          textHeightBehavior: const TextHeightBehavior(
            applyHeightToLastDescent: false,
          ),
        ),
      ),
    );
  }
}

class _PlusTextWidget extends StatelessWidget {
  const _PlusTextWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _containerHeight,
      alignment: Alignment.centerRight,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(
          '+',
          style: Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(fontWeight: FontWeight.bold),
          textHeightBehavior: const TextHeightBehavior(
            applyHeightToLastDescent: false,
          ),
        ),
      ),
    );
  }
}
