import 'dart:convert';

import 'package:common_data/src/model/sns.dart';
import 'package:common_data/src/model/staff.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'staff_repository.freezed.dart';
part 'staff_repository.g.dart';

@Riverpod(keepAlive: true)
StaffRepository staffRepository(Ref ref) {
  final staffsStorageFileApi = ref.watch(staffsStorageFileApiProvider);
  return StaffRepository(
    staffsStorageFileApi: staffsStorageFileApi,
  );
}

final class StaffRepository {
  StaffRepository({
    required StorageFileApi staffsStorageFileApi,
  }) : _staffsStorageFileApi = staffsStorageFileApi;

  final StorageFileApi _staffsStorageFileApi;

  Future<List<Staff>> fetchStaffMembers() async {
    final json = jsonDecode(_jsonContent) as List<dynamic>;
    final staffsView = json
        .map((e) => StaffsView.fromJson(e as Map<String, dynamic>))
        .toList();

    final staffs = staffsView.map((staffView) {
      final snsAccounts = staffView.snsAccounts.map((snsAccount) {
        final snsType = SnsType.values.byName(snsAccount.type);
        final snsValue = snsAccount.value;
        final link = snsType.toUri(snsValue);
        return SnsAccount(
          type: snsType,
          link: link,
        );
      }).toList();
      final iconUrl = Uri.parse(
        _staffsStorageFileApi.getPublicUrl(staffView.iconName),
      );
      return Staff(
        name: staffView.name,
        iconUrl: iconUrl,
        greeting: staffView.greeting,
        snsAccounts: snsAccounts,
      );
    }).toList();
    return staffs;
  }
}

@freezed
class StaffsView with _$StaffsView {
  const factory StaffsView({
    required String name,
    @JsonKey(name: 'icon_name') required String iconName,
    required String greeting,
    @JsonKey(name: 'sns_accounts')
    required List<StaffsViewSnsAccount> snsAccounts,
  }) = _StaffsView;

  factory StaffsView.fromJson(Map<String, dynamic> json) =>
      _$StaffsViewFromJson(json);
}

@freezed
class StaffsViewSnsAccount with _$StaffsViewSnsAccount {
  const factory StaffsViewSnsAccount({
    required String type,
    required String value,
  }) = _StaffsViewSnsAccount;

  factory StaffsViewSnsAccount.fromJson(Map<String, dynamic> json) =>
      _$StaffsViewSnsAccountFromJson(json);
}

const _jsonContent =
    '''[{"name":"asuka","icon_name":"a-skua.webp","greeting":"I □ Flutter","sns_accounts":[{"type":"github","value":"a-skua"},{"type":"x","value":"a_skua"}]},{"name":"酒井佑旗(yuki s)","icon_name":"yukisakai1225.webp","greeting":"第4回も楽しみましょう！","sns_accounts":[{"type":"github","value":"yukisakai1225"},{"type":"x","value":"yu12k25i"}]},{"name":"minn","icon_name":"kitashio.webp","greeting":"","sns_accounts":[{"type":"github","value":"kitashio"},{"type":"x","value":"minn_flutter"}]},{"name":"blendthink","icon_name":"blendthink.webp","greeting":"開発担当","sns_accounts":[{"type":"github","value":"blendthink"},{"type":"x","value":"blendthink"},{"type":"medium","value":"blendthink"},{"type":"qiita","value":"blendthink"},{"type":"zenn","value":"blendthink"},{"type":"note","value":"blendthink"}]},{"name":"mkosuke","icon_name":"shcahill.webp","greeting":"フロサポ🐬","sns_accounts":[{"type":"github","value":"shcahill"},{"type":"x","value":"kosuke_mtm"},{"type":"qiita","value":"mkosuke"},{"type":"zenn","value":"mkosuke"},{"type":"note","value":"shcahill"}]},{"name":"ENDO Takumi","icon_name":"ENDOTAKUMI.webp","greeting":"","sns_accounts":[{"type":"github","value":"ENDOTAKUMI"},{"type":"x","value":"endotakumi_dev"},{"type":"medium","value":"endo.takumi.info"},{"type":"qiita","value":"ENDOTAKUMI"},{"type":"zenn","value":"endotakumi"},{"type":"note","value":"endo_takumi"},{"type":"other","value":"https://endotakumi.github.io/"}]},{"name":"たこさん","icon_name":"K9i-0.webp","greeting":"去年は広報チームリーダーしてました😉","sns_accounts":[{"type":"github","value":"K9i-0"},{"type":"x","value":"K9i_apps"},{"type":"medium","value":"K9i"},{"type":"qiita","value":"K9i-0"},{"type":"zenn","value":"k9i"},{"type":"note","value":"k9i"},{"type":"other","value":"https://k9i.app/"}]},{"name":"heyhey1028","icon_name":"heyhey1028.webp","greeting":"","sns_accounts":[{"type":"github","value":"heyhey1028"},{"type":"x","value":"heyhey1028"},{"type":"zenn","value":"heyhey1028"}]},{"name":"hiropon","icon_name":"hiropeng.webp","greeting":"","sns_accounts":[{"type":"github","value":"hiropeng"}]},{"name":"robo","icon_name":"cch-robo.webp","greeting":"技術とモバイル端末が大好きなエンジニア","sns_accounts":[{"type":"github","value":"cch-robo"},{"type":"x","value":"cch_robo"},{"type":"medium","value":"robo_34007"}]},{"name":"okaryo","icon_name":"okaryo.webp","greeting":"","sns_accounts":[{"type":"github","value":"okaryo"},{"type":"x","value":"okaryoX"}]},{"name":"katota","icon_name":"KTmifune.webp","greeting":"","sns_accounts":[{"type":"github","value":"KTmifune"},{"type":"x","value":"table_house"}]},{"name":"Kurogoma4D","icon_name":"Kurogoma4D.webp","greeting":"","sns_accounts":[{"type":"github","value":"Kurogoma4D"},{"type":"x","value":"Krgm4D"},{"type":"zenn","value":"kurogoma4d"}]},{"name":"なが","icon_name":"sinjikoro.webp","greeting":"","sns_accounts":[{"type":"github","value":"sinjikoro"},{"type":"x","value":"shinnaaaga"},{"type":"medium","value":"shinnaga.dev"}]},{"name":"朝日 大樹 (ashdik)","icon_name":"daiki1003.webp","greeting":"Flutterを盛り上げていきましょう！","sns_accounts":[{"type":"github","value":"daiki1003"},{"type":"x","value":"daiki1003"},{"type":"medium","value":"ashdik.saxophone"},{"type":"qiita","value":"ashdik"},{"type":"zenn","value":"ashdik"},{"type":"note","value":"ashdik"},{"type":"other","value":"https://blog.dalt.me"}]},{"name":"koji-1009","icon_name":"koji-1009.webp","greeting":"","sns_accounts":[{"type":"github","value":"koji-1009"},{"type":"x","value":"D_R_1009"},{"type":"medium","value":"koji-1009"},{"type":"zenn","value":"koji_1009"}]},{"name":"Takasugi Kensuke","icon_name":"tks-00.webp","greeting":"Flutter は楽しいぞ","sns_accounts":[{"type":"github","value":"tks-00"},{"type":"qiita","value":"tks_00"}]},{"name":"darallium","icon_name":"darallium.webp","greeting":"","sns_accounts":[{"type":"github","value":"darallium"},{"type":"x","value":"Yu_kyu_n"}]},{"name":"Santa Takahashi","icon_name":"santa112358.webp","greeting":"","sns_accounts":[{"type":"github","value":"santa112358"},{"type":"x","value":"3ta0212"}]},{"name":"Inoue","icon_name":"k-inoue-github.webp","greeting":"デザイナー視点でFlutterを広げたい","sns_accounts":[{"type":"github","value":"k-inoue-github"}]},{"name":"TK","icon_name":"TK-Guitar.webp","greeting":"カンファレンススタッフ初挑戦、頑張る！","sns_accounts":[{"type":"github","value":"TK-Guitar"},{"type":"qiita","value":"TK-San"}]},{"name":"sohichiro","icon_name":"sohichiro.webp","greeting":"","sns_accounts":[{"type":"github","value":"sohichiro"},{"type":"x","value":"sohichiro"}]},{"name":"白崎 紀充","icon_name":"tucur-prg.webp","greeting":"新しい繋がりを探して","sns_accounts":[{"type":"github","value":"tucur-prg"},{"type":"x","value":"magnet_0113_eng"},{"type":"qiita","value":"tucur-prg"}]},{"name":"うめちゃん","icon_name":"umechanhika.webp","greeting":"","sns_accounts":[{"type":"github","value":"umechanhika"},{"type":"x","value":"umechanhika"},{"type":"medium","value":"umechanhika"},{"type":"qiita","value":"umechanhika"},{"type":"zenn","value":"umechanhika"},{"type":"note","value":"umechanhika"},{"type":"other","value":"https://umechanhika.notion.site/umechanhika-903ff47c623343c695ba9d4f5292e9b5"}]},{"name":"shimizu","icon_name":"j1522158.webp","greeting":"","sns_accounts":[{"type":"github","value":"j1522158"}]},{"name":"cardseditor","icon_name":"cardseditor.webp","greeting":"","sns_accounts":[{"type":"github","value":"cardseditor"},{"type":"x","value":"cardseditor"},{"type":"medium","value":"cardseditor"},{"type":"qiita","value":"cardseditor"},{"type":"zenn","value":"cardseditor"}]},{"name":"yuta-ike","icon_name":"yuta-ike.webp","greeting":"","sns_accounts":[{"type":"github","value":"yuta-ike"},{"type":"x","value":"Selria1"},{"type":"medium","value":"yuta-ike"},{"type":"qiita","value":"yuta-ike"},{"type":"zenn","value":"yuta_ike"},{"type":"note","value":"yuta_ike"}]},{"name":"kikuchy","icon_name":"kikuchy.webp","greeting":"楽しいFlutterKaigiにするぞ！","sns_accounts":[{"type":"github","value":"kikuchy"},{"type":"x","value":"kikuchy"},{"type":"medium","value":"kikuchy"},{"type":"qiita","value":"kikuchy"},{"type":"zenn","value":"kikuchy"}]},{"name":"haru","icon_name":"Haru-Kobayashi073.webp","greeting":"さじ1杯分程、Web開発に携わりました!","sns_accounts":[{"type":"github","value":"Haru-Kobayashi073"},{"type":"x","value":"h_aru073"},{"type":"qiita","value":"haru_826230"},{"type":"zenn","value":"haru_073"},{"type":"note","value":"koba_haru"},{"type":"other","value":"https://general-epoxy-a08.notion.site/ac045c55f61946e88864847d6cd2cf0f?pvs=4"}]},{"name":"kuno","icon_name":"kno3a87.webp","greeting":"わいわい","sns_accounts":[{"type":"github","value":"kno3a87"},{"type":"x","value":"Kunodayo_oboete"},{"type":"zenn","value":"kuno"}]},{"name":"mafreud","icon_name":"mafreud.webp","greeting":"Flutter盛り上げていきましょう！","sns_accounts":[{"type":"github","value":"mafreud"},{"type":"x","value":"ma_freud"}]},{"name":"草野 慶人","icon_name":"keitokusano.webp","greeting":"FlutterKaigi楽しみっ！","sns_accounts":[{"type":"github","value":"keitokusano"},{"type":"x","value":"techkeito"}]},{"name":"そた","icon_name":"SoutaTanaka.webp","greeting":"Webサイト頑張りました！","sns_accounts":[{"type":"github","value":"SoutaTanaka"},{"type":"x","value":"_sotaatos"},{"type":"qiita","value":"SotaAtos"}]},{"name":"もぐもぐ","icon_name":"YumNumm.webp","greeting":"ウェブサイトとチケットシステムを作っています💪","sns_accounts":[{"type":"github","value":"YumNumm"},{"type":"x","value":"YumNumm"},{"type":"qiita","value":"YumNumm"},{"type":"zenn","value":"YumNumm"}]},{"name":"いせりゅー","icon_name":"iseruuuuu.webp","greeting":"","sns_accounts":[{"type":"github","value":"iseruuuuu"},{"type":"x","value":"isekiryu"},{"type":"medium","value":"iseryuuuuu3"},{"type":"qiita","value":"isekiryu"},{"type":"zenn","value":"iseki"},{"type":"note","value":"iseryu"}]},{"name":"asmz","icon_name":"starmAIne777.webp","greeting":"Xの中の人として盛り上げたいです！","sns_accounts":[{"type":"github","value":"starmAIne777"},{"type":"x","value":"starmAIne777"},{"type":"medium","value":"ch4ndelier.w4lt2"}]},{"name":"katsummy","icon_name":"granoeste.webp","greeting":"","sns_accounts":[{"type":"github","value":"granoeste"},{"type":"x","value":"katsummy"}]},{"name":"jiyuujin","icon_name":"jiyuujin.webp","greeting":"Flutterでワイワイしよう！","sns_accounts":[{"type":"github","value":"jiyuujin"},{"type":"medium","value":"jiyuujin"},{"type":"qiita","value":"jiyuujin"},{"type":"zenn","value":"jiyuujin"},{"type":"note","value":"uraneko"},{"type":"other","value":"https://yuma-kitamura.nekohack.me/"}]},{"name":"ssoejima","icon_name":"mightyfrog.webp","greeting":"","sns_accounts":[{"type":"github","value":"mightyfrog"},{"type":"x","value":"highballegg"},{"type":"qiita","value":"ssoejima"}]},{"name":"TKMN","icon_name":"wtkmn.webp","greeting":"運営初参加です。よろしくお願いします！","sns_accounts":[{"type":"github","value":"wtkmn"},{"type":"x","value":"w_tkmn"},{"type":"medium","value":"tkmn"},{"type":"qiita","value":"w_tkmn"},{"type":"zenn","value":"w_tkmn"},{"type":"other","value":"https://tkmn.notion.site"}]},{"name":"akeybako","icon_name":"akeybako.webp","greeting":"","sns_accounts":[{"type":"github","value":"akeybako"},{"type":"x","value":"a_key_bako"},{"type":"zenn","value":"akeybako"}]}]''';
