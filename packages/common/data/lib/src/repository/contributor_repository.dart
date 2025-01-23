import 'dart:convert';

import 'package:common_data/src/model/contributor.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contributor_repository.g.dart';

@Riverpod(keepAlive: true)
ContributorRepository contributorRepository(Ref ref) {
  return ContributorRepository();
}

final class ContributorRepository {
  ContributorRepository();

  Future<List<Contributor>> fetchContributors() async {
    final json = jsonDecode(_jsonContent) as List<dynamic>;
    final contributors = json
        .map((e) => Contributor.fromJson(e as Map<String, dynamic>))
        .toList();
    return contributors;
  }
}

const _jsonContent =
    '''[{"name":"YumNumm","avatar_url":"https://avatars.githubusercontent.com/u/73390859?v=4","contribution_count":1627},{"name":"blendthink","avatar_url":"https://avatars.githubusercontent.com/u/32213113?v=4","contribution_count":545},{"name":"TK-Guitar","avatar_url":"https://avatars.githubusercontent.com/u/162671982?v=4","contribution_count":114},{"name":"Kurogoma4D","avatar_url":"https://avatars.githubusercontent.com/u/13596653?v=4","contribution_count":103},{"name":"keitokusano","avatar_url":"https://avatars.githubusercontent.com/u/11767371?v=4","contribution_count":76},{"name":"Haru-Kobayashi073","avatar_url":"https://avatars.githubusercontent.com/u/103411556?v=4","contribution_count":34},{"name":"SoutaTanaka","avatar_url":"https://avatars.githubusercontent.com/u/17494254?v=4","contribution_count":30},{"name":"masa-futa","avatar_url":"https://avatars.githubusercontent.com/u/87967842?v=4","contribution_count":15},{"name":"ham-burger","avatar_url":"https://avatars.githubusercontent.com/u/25279469?v=4","contribution_count":14},{"name":"iseruuuuu","avatar_url":"https://avatars.githubusercontent.com/u/67954894?v=4","contribution_count":13},{"name":"akeybako","avatar_url":"https://avatars.githubusercontent.com/u/16185049?v=4","contribution_count":11},{"name":"koji-1009","avatar_url":"https://avatars.githubusercontent.com/u/17231507?v=4","contribution_count":8},{"name":"MrSmart00","avatar_url":"https://avatars.githubusercontent.com/u/8654605?v=4","contribution_count":7},{"name":"temoki","avatar_url":"https://avatars.githubusercontent.com/u/3050100?v=4","contribution_count":7},{"name":"trashfeed","avatar_url":"https://avatars.githubusercontent.com/u/885696?v=4","contribution_count":5},{"name":"chippy-ao","avatar_url":"https://avatars.githubusercontent.com/u/54802496?v=4","contribution_count":4},{"name":"miyasic","avatar_url":"https://avatars.githubusercontent.com/u/62228968?v=4","contribution_count":3},{"name":"utisam","avatar_url":"https://avatars.githubusercontent.com/u/1206410?v=4","contribution_count":2},{"name":"ShunMc","avatar_url":"https://avatars.githubusercontent.com/u/6492958?v=4","contribution_count":2},{"name":"a-skua","avatar_url":"https://avatars.githubusercontent.com/u/41745521?v=4","contribution_count":2},{"name":"mottox2","avatar_url":"https://avatars.githubusercontent.com/u/7007253?v=4","contribution_count":1},{"name":"alpha2048","avatar_url":"https://avatars.githubusercontent.com/u/26202314?v=4","contribution_count":1}]''';
