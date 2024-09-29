import 'package:common_data/src/model/view/sponsor_with_session.dart';
import 'package:test/test.dart';

void main() {
  final json = [
    {
      'id': 1,
      'name': 'プラチナ株式会社',
      'logo_name': 'platinum_company.png',
      'description': 'プラチナスポンサーの説明文です。',
      'url': 'https://platinum-company.example.com',
      'type': 'platinum',
      'sessions': [
        {
          'id': 'd6362da2-b419-4d7c-b3fe-93d99b428c6a',
          'title': 'サンプルセッション 14',
          'description': 'これはサンプルセッション 14 の説明です。',
          'starts_at': '2024-10-02T09:36:45.89288+09:00',
          'ends_at': '2024-10-06T15:51:07.887756+09:00',
          'speakers': [
            {
              'id': '9893140d-a1e3-4e25-ba40-aa045bc1c950',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '9893140d-a1e3-4e25-ba40-aa045bc1c950',
                  'type': 'github',
                  'value': 'github_598',
                },
                {
                  'id': '9893140d-a1e3-4e25-ba40-aa045bc1c950',
                  'type': 'x',
                  'value': 'x_598',
                }
              ],
            },
            {
              'id': '672b4d2d-ab79-4349-b9f5-8019034a1daa',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '672b4d2d-ab79-4349-b9f5-8019034a1daa',
                  'type': 'github',
                  'value': 'github_390',
                },
                {
                  'id': '672b4d2d-ab79-4349-b9f5-8019034a1daa',
                  'type': 'x',
                  'value': 'x_390',
                }
              ],
            }
          ],
          'venue': {
            'id': 'd99d9ab4-6c5b-4738-a897-8f29698145b9',
            'name': 'ワークショップエリア',
          },
        },
        {
          'id': '0f2ec253-5e33-4e9c-b03a-fabcfe5df2b4',
          'title': 'サンプルセッション 17',
          'description': 'これはサンプルセッション 17 の説明です。',
          'starts_at': '2024-09-30T10:41:40.563026+09:00',
          'ends_at': '2024-10-01T17:37:10.532186+09:00',
          'speakers': [
            {
              'id': '52ea18ee-4e64-49bc-80fb-44d77c581e7d',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '52ea18ee-4e64-49bc-80fb-44d77c581e7d',
                  'type': 'github',
                  'value': 'github_309',
                },
                {
                  'id': '52ea18ee-4e64-49bc-80fb-44d77c581e7d',
                  'type': 'x',
                  'value': 'x_309',
                }
              ],
            },
            {
              'id': 'df5665c3-680b-4e41-baa5-9807f7709179',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'df5665c3-680b-4e41-baa5-9807f7709179',
                  'type': 'github',
                  'value': 'github_861',
                },
                {
                  'id': 'df5665c3-680b-4e41-baa5-9807f7709179',
                  'type': 'x',
                  'value': 'x_861',
                }
              ],
            },
            {
              'id': '362b2c52-5baa-4e76-8b46-b4737bbcac4a',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '362b2c52-5baa-4e76-8b46-b4737bbcac4a',
                  'type': 'github',
                  'value': 'github_199',
                },
                {
                  'id': '362b2c52-5baa-4e76-8b46-b4737bbcac4a',
                  'type': 'x',
                  'value': 'x_199',
                }
              ],
            },
            {
              'id': '639716e1-f077-4891-af79-959bbd811c2c',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '639716e1-f077-4891-af79-959bbd811c2c',
                  'type': 'github',
                  'value': 'github_376',
                },
                {
                  'id': '639716e1-f077-4891-af79-959bbd811c2c',
                  'type': 'x',
                  'value': 'x_376',
                }
              ],
            }
          ],
          'venue': {
            'id': 'f1225a1e-af46-4248-ace6-6400ffa43ccc',
            'name': 'メインホール',
          },
        },
        {
          'id': '15a5a83d-4464-446c-812b-126e170a2f11',
          'title': 'サンプルセッション 23',
          'description': 'これはサンプルセッション 23 の説明です。',
          'starts_at': '2024-09-30T12:01:55.042129+09:00',
          'ends_at': '2024-10-05T13:23:03.175503+09:00',
          'speakers': [
            {
              'id': '9893140d-a1e3-4e25-ba40-aa045bc1c950',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '9893140d-a1e3-4e25-ba40-aa045bc1c950',
                  'type': 'github',
                  'value': 'github_598',
                },
                {
                  'id': '9893140d-a1e3-4e25-ba40-aa045bc1c950',
                  'type': 'x',
                  'value': 'x_598',
                }
              ],
            },
            {
              'id': '3d5ae517-0678-4335-bd65-628a6048c5ea',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '3d5ae517-0678-4335-bd65-628a6048c5ea',
                  'type': 'github',
                  'value': 'github_227',
                },
                {
                  'id': '3d5ae517-0678-4335-bd65-628a6048c5ea',
                  'type': 'x',
                  'value': 'x_227',
                }
              ],
            },
            {
              'id': '4f258e58-3089-4c22-a4bb-dbab6668478e',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '4f258e58-3089-4c22-a4bb-dbab6668478e',
                  'type': 'github',
                  'value': 'github_294',
                },
                {
                  'id': '4f258e58-3089-4c22-a4bb-dbab6668478e',
                  'type': 'x',
                  'value': 'x_294',
                }
              ],
            },
            {
              'id': 'ec1b06a9-a72e-4298-8fc7-88ea698796ec',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'ec1b06a9-a72e-4298-8fc7-88ea698796ec',
                  'type': 'github',
                  'value': 'github_913',
                },
                {
                  'id': 'ec1b06a9-a72e-4298-8fc7-88ea698796ec',
                  'type': 'x',
                  'value': 'x_913',
                }
              ],
            }
          ],
          'venue': {
            'id': 'bb58a8ca-f343-476d-80b8-0c3aa2878259',
            'name': 'セミナールームA',
          },
        },
        {
          'id': '908e642e-badb-4c3e-9f90-a9ba827e85e9',
          'title': 'サンプルセッション 30',
          'description': 'これはサンプルセッション 30 の説明です。',
          'starts_at': '2024-10-04T07:49:57.474741+09:00',
          'ends_at': '2024-09-29T23:00:18.773922+09:00',
          'speakers': [
            {
              'id': '0ec8a6ec-4c0f-4b36-92e4-0f181f2bdf7e',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '0ec8a6ec-4c0f-4b36-92e4-0f181f2bdf7e',
                  'type': 'github',
                  'value': 'github_56',
                },
                {
                  'id': '0ec8a6ec-4c0f-4b36-92e4-0f181f2bdf7e',
                  'type': 'x',
                  'value': 'x_56',
                }
              ],
            },
            {
              'id': '8684851c-f916-420a-9566-3d9bda747238',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '8684851c-f916-420a-9566-3d9bda747238',
                  'type': 'github',
                  'value': 'github_525',
                },
                {
                  'id': '8684851c-f916-420a-9566-3d9bda747238',
                  'type': 'x',
                  'value': 'x_525',
                }
              ],
            },
            {
              'id': 'de812323-025f-441f-866d-1cfe4087ae41',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'de812323-025f-441f-866d-1cfe4087ae41',
                  'type': 'github',
                  'value': 'github_860',
                },
                {
                  'id': 'de812323-025f-441f-866d-1cfe4087ae41',
                  'type': 'x',
                  'value': 'x_860',
                }
              ],
            }
          ],
          'venue': {
            'id': 'd99d9ab4-6c5b-4738-a897-8f29698145b9',
            'name': 'ワークショップエリア',
          },
        },
        {
          'id': '658d7d06-0ed8-4dc0-bfd2-7970dffa2b22',
          'title': 'サンプルセッション 48',
          'description': 'これはサンプルセッション 48 の説明です。',
          'starts_at': '2024-10-06T04:39:40.138354+09:00',
          'ends_at': '2024-10-03T17:27:32.790651+09:00',
          'speakers': [
            {
              'id': '32271670-8fb9-49c1-836f-375784323cb9',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '32271670-8fb9-49c1-836f-375784323cb9',
                  'type': 'github',
                  'value': 'github_187',
                },
                {
                  'id': '32271670-8fb9-49c1-836f-375784323cb9',
                  'type': 'x',
                  'value': 'x_187',
                }
              ],
            }
          ],
          'venue': {
            'id': 'f1225a1e-af46-4248-ace6-6400ffa43ccc',
            'name': 'メインホール',
          },
        }
      ],
    },
    {
      'id': 2,
      'name': 'ゴールド商事',
      'logo_name': 'gold_trading.png',
      'description': 'ゴールドスポンサーの説明文です。',
      'url': 'https://gold-trading.example.com',
      'type': 'gold',
      'sessions': [
        {
          'id': 'dcf888cb-2abc-4f7b-9a3a-744908d4181d',
          'title': 'サンプルセッション 2',
          'description': 'これはサンプルセッション 2 の説明です。',
          'starts_at': '2024-09-30T02:45:31.428615+09:00',
          'ends_at': '2024-10-04T09:35:31.979556+09:00',
          'speakers': [
            {
              'id': '341f7948-0568-41aa-ab63-1815afe7ec31',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '341f7948-0568-41aa-ab63-1815afe7ec31',
                  'type': 'github',
                  'value': 'github_192',
                },
                {
                  'id': '341f7948-0568-41aa-ab63-1815afe7ec31',
                  'type': 'x',
                  'value': 'x_192',
                }
              ],
            },
            {
              'id': 'd1259cd0-8fba-441e-969d-64366cd9073a',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'd1259cd0-8fba-441e-969d-64366cd9073a',
                  'type': 'github',
                  'value': 'github_807',
                },
                {
                  'id': 'd1259cd0-8fba-441e-969d-64366cd9073a',
                  'type': 'x',
                  'value': 'x_807',
                }
              ],
            },
            {
              'id': 'c3574060-19cd-43df-b93b-12c7312fdd38',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'c3574060-19cd-43df-b93b-12c7312fdd38',
                  'type': 'github',
                  'value': 'github_765',
                },
                {
                  'id': 'c3574060-19cd-43df-b93b-12c7312fdd38',
                  'type': 'x',
                  'value': 'x_765',
                }
              ],
            }
          ],
          'venue': {
            'id': 'ab1395ec-1311-4928-9f99-50556ef58b32',
            'name': 'セミナールームB',
          },
        },
        {
          'id': 'c5276693-4b0a-425f-adad-4472eedd1c6e',
          'title': 'サンプルセッション 11',
          'description': 'これはサンプルセッション 11 の説明です。',
          'starts_at': '2024-10-02T01:16:22.684808+09:00',
          'ends_at': '2024-10-04T05:21:04.771809+09:00',
          'speakers': [
            {
              'id': 'aebed32b-4de3-4653-bc56-f46760238e6e',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'aebed32b-4de3-4653-bc56-f46760238e6e',
                  'type': 'github',
                  'value': 'github_686',
                },
                {
                  'id': 'aebed32b-4de3-4653-bc56-f46760238e6e',
                  'type': 'x',
                  'value': 'x_686',
                }
              ],
            },
            {
              'id': '836ccc8b-3a07-4578-b52c-bb51192e9681',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '836ccc8b-3a07-4578-b52c-bb51192e9681',
                  'type': 'github',
                  'value': 'github_508',
                },
                {
                  'id': '836ccc8b-3a07-4578-b52c-bb51192e9681',
                  'type': 'x',
                  'value': 'x_508',
                }
              ],
            }
          ],
          'venue': {
            'id': 'd99d9ab4-6c5b-4738-a897-8f29698145b9',
            'name': 'ワークショップエリア',
          },
        },
        {
          'id': '26fba503-544a-4a80-bd59-178dd974fb4b',
          'title': 'サンプルセッション 13',
          'description': 'これはサンプルセッション 13 の説明です。',
          'starts_at': '2024-10-03T15:51:51.899904+09:00',
          'ends_at': '2024-10-01T13:39:42.582934+09:00',
          'speakers': [
            {
              'id': 'e024649e-95dd-4146-b7fc-8f7a995e9594',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'e024649e-95dd-4146-b7fc-8f7a995e9594',
                  'type': 'github',
                  'value': 'github_863',
                },
                {
                  'id': 'e024649e-95dd-4146-b7fc-8f7a995e9594',
                  'type': 'x',
                  'value': 'x_863',
                }
              ],
            },
            {
              'id': '77043130-8555-442c-ab13-3e0f017e6ac5',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '77043130-8555-442c-ab13-3e0f017e6ac5',
                  'type': 'github',
                  'value': 'github_461',
                },
                {
                  'id': '77043130-8555-442c-ab13-3e0f017e6ac5',
                  'type': 'x',
                  'value': 'x_461',
                }
              ],
            }
          ],
          'venue': {
            'id': 'd99d9ab4-6c5b-4738-a897-8f29698145b9',
            'name': 'ワークショップエリア',
          },
        },
        {
          'id': '0fd3dd63-73d4-4179-b9c9-866ebbc64582',
          'title': 'サンプルセッション 19',
          'description': 'これはサンプルセッション 19 の説明です。',
          'starts_at': '2024-09-30T16:46:12.802449+09:00',
          'ends_at': '2024-09-29T19:28:50.609178+09:00',
          'speakers': [
            {
              'id': 'b287ce95-8bb2-4226-bc8b-ddd374dc43bc',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'b287ce95-8bb2-4226-bc8b-ddd374dc43bc',
                  'type': 'github',
                  'value': 'github_703',
                },
                {
                  'id': 'b287ce95-8bb2-4226-bc8b-ddd374dc43bc',
                  'type': 'x',
                  'value': 'x_703',
                }
              ],
            },
            {
              'id': 'f2a3c343-c5fa-464f-8e84-653ec67aeca7',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'f2a3c343-c5fa-464f-8e84-653ec67aeca7',
                  'type': 'github',
                  'value': 'github_941',
                },
                {
                  'id': 'f2a3c343-c5fa-464f-8e84-653ec67aeca7',
                  'type': 'x',
                  'value': 'x_941',
                }
              ],
            }
          ],
          'venue': {
            'id': 'bb58a8ca-f343-476d-80b8-0c3aa2878259',
            'name': 'セミナールームA',
          },
        },
        {
          'id': 'ca3a29b9-987b-44be-b4ff-2def0556d600',
          'title': 'サンプルセッション 26',
          'description': 'これはサンプルセッション 26 の説明です。',
          'starts_at': '2024-10-01T06:41:45.640822+09:00',
          'ends_at': '2024-10-01T14:57:27.427811+09:00',
          'speakers': [
            {
              'id': 'a4224ea0-a70a-450f-b70d-334d7e327da5',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'a4224ea0-a70a-450f-b70d-334d7e327da5',
                  'type': 'github',
                  'value': 'github_637',
                },
                {
                  'id': 'a4224ea0-a70a-450f-b70d-334d7e327da5',
                  'type': 'x',
                  'value': 'x_637',
                }
              ],
            },
            {
              'id': '4dda6cef-dd76-4757-bc0d-0427557e471d',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '4dda6cef-dd76-4757-bc0d-0427557e471d',
                  'type': 'github',
                  'value': 'github_290',
                },
                {
                  'id': '4dda6cef-dd76-4757-bc0d-0427557e471d',
                  'type': 'x',
                  'value': 'x_290',
                }
              ],
            }
          ],
          'venue': {
            'id': 'bb58a8ca-f343-476d-80b8-0c3aa2878259',
            'name': 'セミナールームA',
          },
        }
      ],
    },
    {
      'id': 3,
      'name': 'シルバーテクノロジー',
      'logo_name': 'silver_tech.png',
      'description': 'シルバースポンサーの説明文です。',
      'url': 'https://silver-tech.example.com',
      'type': 'silver',
      'sessions': [
        {
          'id': 'b840c104-1bb7-47a6-8081-5b33b70fef89',
          'title': 'サンプルセッション 1',
          'description': 'これはサンプルセッション 1 の説明です。',
          'starts_at': '2024-10-06T00:46:44.362991+09:00',
          'ends_at': '2024-09-30T20:30:34.42339+09:00',
          'speakers': [
            {
              'id': 'ba63fd7c-1fd1-40de-b189-cddaa93f90c4',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'ba63fd7c-1fd1-40de-b189-cddaa93f90c4',
                  'type': 'github',
                  'value': 'github_735',
                },
                {
                  'id': 'ba63fd7c-1fd1-40de-b189-cddaa93f90c4',
                  'type': 'x',
                  'value': 'x_735',
                }
              ],
            },
            {
              'id': 'c6dd616c-e2b0-4b6c-8ec3-b736b0e50558',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'c6dd616c-e2b0-4b6c-8ec3-b736b0e50558',
                  'type': 'github',
                  'value': 'github_771',
                },
                {
                  'id': 'c6dd616c-e2b0-4b6c-8ec3-b736b0e50558',
                  'type': 'x',
                  'value': 'x_771',
                }
              ],
            },
            {
              'id': 'a3546bf8-4491-4f16-bd51-29b0e3410dd4',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'a3546bf8-4491-4f16-bd51-29b0e3410dd4',
                  'type': 'github',
                  'value': 'github_635',
                },
                {
                  'id': 'a3546bf8-4491-4f16-bd51-29b0e3410dd4',
                  'type': 'x',
                  'value': 'x_635',
                }
              ],
            },
            {
              'id': '33e0f391-3ece-4d3a-80e1-a94fcad96c59',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '33e0f391-3ece-4d3a-80e1-a94fcad96c59',
                  'type': 'github',
                  'value': 'github_191',
                },
                {
                  'id': '33e0f391-3ece-4d3a-80e1-a94fcad96c59',
                  'type': 'x',
                  'value': 'x_191',
                }
              ],
            }
          ],
          'venue': {
            'id': 'bb58a8ca-f343-476d-80b8-0c3aa2878259',
            'name': 'セミナールームA',
          },
        },
        {
          'id': '2752be22-6506-4010-b1e5-17925bc994aa',
          'title': 'サンプルセッション 27',
          'description': 'これはサンプルセッション 27 の説明です。',
          'starts_at': '2024-09-29T17:33:58.276998+09:00',
          'ends_at': '2024-09-30T10:25:02.617325+09:00',
          'speakers': [
            {
              'id': 'c6dd616c-e2b0-4b6c-8ec3-b736b0e50558',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'c6dd616c-e2b0-4b6c-8ec3-b736b0e50558',
                  'type': 'github',
                  'value': 'github_771',
                },
                {
                  'id': 'c6dd616c-e2b0-4b6c-8ec3-b736b0e50558',
                  'type': 'x',
                  'value': 'x_771',
                }
              ],
            },
            {
              'id': '85f49509-fe79-4ceb-b35d-73eb80591b09',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '85f49509-fe79-4ceb-b35d-73eb80591b09',
                  'type': 'github',
                  'value': 'github_521',
                },
                {
                  'id': '85f49509-fe79-4ceb-b35d-73eb80591b09',
                  'type': 'x',
                  'value': 'x_521',
                }
              ],
            }
          ],
          'venue': {
            'id': 'f1225a1e-af46-4248-ace6-6400ffa43ccc',
            'name': 'メインホール',
          },
        },
        {
          'id': '55450721-92ef-41ab-ab98-bbbe46f02ec1',
          'title': 'サンプルセッション 29',
          'description': 'これはサンプルセッション 29 の説明です。',
          'starts_at': '2024-09-29T19:31:26.314595+09:00',
          'ends_at': '2024-09-30T05:55:36.587045+09:00',
          'speakers': [
            {
              'id': '6b77a1cd-71d0-4939-bf20-4df8f26b6e61',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '6b77a1cd-71d0-4939-bf20-4df8f26b6e61',
                  'type': 'github',
                  'value': 'github_405',
                },
                {
                  'id': '6b77a1cd-71d0-4939-bf20-4df8f26b6e61',
                  'type': 'x',
                  'value': 'x_405',
                }
              ],
            },
            {
              'id': 'a62db2c2-e628-4a6a-b24f-e342bf2a38b6',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'a62db2c2-e628-4a6a-b24f-e342bf2a38b6',
                  'type': 'github',
                  'value': 'github_642',
                },
                {
                  'id': 'a62db2c2-e628-4a6a-b24f-e342bf2a38b6',
                  'type': 'x',
                  'value': 'x_642',
                }
              ],
            }
          ],
          'venue': {
            'id': 'bb58a8ca-f343-476d-80b8-0c3aa2878259',
            'name': 'セミナールームA',
          },
        },
        {
          'id': '0e0a0239-6eb4-4b53-a0e2-94d4f6185281',
          'title': 'サンプルセッション 34',
          'description': 'これはサンプルセッション 34 の説明です。',
          'starts_at': '2024-10-02T02:02:34.353495+09:00',
          'ends_at': '2024-09-29T18:52:34.397318+09:00',
          'speakers': [
            {
              'id': 'ee21bce6-cf80-4a79-b7fa-160d4c959aba',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'ee21bce6-cf80-4a79-b7fa-160d4c959aba',
                  'type': 'github',
                  'value': 'github_923',
                },
                {
                  'id': 'ee21bce6-cf80-4a79-b7fa-160d4c959aba',
                  'type': 'x',
                  'value': 'x_923',
                }
              ],
            },
            {
              'id': '207fba60-10e0-49bf-b4a6-0aa2592c7448',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '207fba60-10e0-49bf-b4a6-0aa2592c7448',
                  'type': 'github',
                  'value': 'github_118',
                },
                {
                  'id': '207fba60-10e0-49bf-b4a6-0aa2592c7448',
                  'type': 'x',
                  'value': 'x_118',
                }
              ],
            },
            {
              'id': '4b8bd30c-e37e-4c94-8848-7c1d607b358b',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '4b8bd30c-e37e-4c94-8848-7c1d607b358b',
                  'type': 'github',
                  'value': 'github_280',
                },
                {
                  'id': '4b8bd30c-e37e-4c94-8848-7c1d607b358b',
                  'type': 'x',
                  'value': 'x_280',
                }
              ],
            }
          ],
          'venue': {
            'id': 'bb58a8ca-f343-476d-80b8-0c3aa2878259',
            'name': 'セミナールームA',
          },
        },
        {
          'id': '2a6fb22e-5169-4c42-8d09-041327552377',
          'title': 'サンプルセッション 46',
          'description': 'これはサンプルセッション 46 の説明です。',
          'starts_at': '2024-10-02T12:08:34.54232+09:00',
          'ends_at': '2024-10-03T08:45:34.575138+09:00',
          'speakers': [
            {
              'id': 'a1a6baca-85a9-45bd-9a27-1e86499ac6cc',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'a1a6baca-85a9-45bd-9a27-1e86499ac6cc',
                  'type': 'github',
                  'value': 'github_633',
                },
                {
                  'id': 'a1a6baca-85a9-45bd-9a27-1e86499ac6cc',
                  'type': 'x',
                  'value': 'x_633',
                }
              ],
            },
            {
              'id': 'd3af224b-d0d8-4274-a3e7-27b5c081018f',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'd3af224b-d0d8-4274-a3e7-27b5c081018f',
                  'type': 'github',
                  'value': 'github_820',
                },
                {
                  'id': 'd3af224b-d0d8-4274-a3e7-27b5c081018f',
                  'type': 'x',
                  'value': 'x_820',
                }
              ],
            },
            {
              'id': '29e60bd2-7ca6-4675-93e7-cf90c286f396',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '29e60bd2-7ca6-4675-93e7-cf90c286f396',
                  'type': 'github',
                  'value': 'github_157',
                },
                {
                  'id': '29e60bd2-7ca6-4675-93e7-cf90c286f396',
                  'type': 'x',
                  'value': 'x_157',
                }
              ],
            }
          ],
          'venue': {
            'id': 'd99d9ab4-6c5b-4738-a897-8f29698145b9',
            'name': 'ワークショップエリア',
          },
        }
      ],
    },
    {
      'id': 4,
      'name': 'ブロンズソリューションズ',
      'logo_name': 'bronze_solutions.png',
      'description': 'ブロンズスポンサーの説明文です。',
      'url': 'https://bronze-solutions.example.com',
      'type': 'bronze',
      'sessions': [
        {
          'id': 'b6dd1622-ebfb-455b-940d-f9710e544333',
          'title': 'サンプルセッション 18',
          'description': 'これはサンプルセッション 18 の説明です。',
          'starts_at': '2024-10-05T20:57:12.244495+09:00',
          'ends_at': '2024-10-06T12:45:24.762141+09:00',
          'speakers': [
            {
              'id': '32069906-dc8b-450b-be66-776877204e56',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '32069906-dc8b-450b-be66-776877204e56',
                  'type': 'github',
                  'value': 'github_185',
                },
                {
                  'id': '32069906-dc8b-450b-be66-776877204e56',
                  'type': 'x',
                  'value': 'x_185',
                }
              ],
            },
            {
              'id': '6983d3bf-733c-4257-8697-e06a5729fdea',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '6983d3bf-733c-4257-8697-e06a5729fdea',
                  'type': 'github',
                  'value': 'github_398',
                },
                {
                  'id': '6983d3bf-733c-4257-8697-e06a5729fdea',
                  'type': 'x',
                  'value': 'x_398',
                }
              ],
            }
          ],
          'venue': {
            'id': 'f1225a1e-af46-4248-ace6-6400ffa43ccc',
            'name': 'メインホール',
          },
        },
        {
          'id': 'dfaf1396-269a-429d-8166-9c27d11e2145',
          'title': 'サンプルセッション 24',
          'description': 'これはサンプルセッション 24 の説明です。',
          'starts_at': '2024-10-02T15:51:12.030715+09:00',
          'ends_at': '2024-09-30T18:59:26.962925+09:00',
          'speakers': [
            {
              'id': 'daff96e3-472b-4e66-9b38-e40390d8bc8f',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'daff96e3-472b-4e66-9b38-e40390d8bc8f',
                  'type': 'github',
                  'value': 'github_841',
                },
                {
                  'id': 'daff96e3-472b-4e66-9b38-e40390d8bc8f',
                  'type': 'x',
                  'value': 'x_841',
                }
              ],
            },
            {
              'id': 'cd63ec16-6054-48fa-95f5-e304498405df',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'cd63ec16-6054-48fa-95f5-e304498405df',
                  'type': 'github',
                  'value': 'github_791',
                },
                {
                  'id': 'cd63ec16-6054-48fa-95f5-e304498405df',
                  'type': 'x',
                  'value': 'x_791',
                }
              ],
            }
          ],
          'venue': {
            'id': 'ab1395ec-1311-4928-9f99-50556ef58b32',
            'name': 'セミナールームB',
          },
        },
        {
          'id': 'a67331f4-5551-47c9-a13a-3da4540e94bb',
          'title': 'サンプルセッション 33',
          'description': 'これはサンプルセッション 33 の説明です。',
          'starts_at': '2024-09-30T12:59:46.907209+09:00',
          'ends_at': '2024-09-30T07:18:37.922415+09:00',
          'speakers': [
            {
              'id': '3d412189-0c26-46c8-8899-ff5e762072ad',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '3d412189-0c26-46c8-8899-ff5e762072ad',
                  'type': 'github',
                  'value': 'github_226',
                },
                {
                  'id': '3d412189-0c26-46c8-8899-ff5e762072ad',
                  'type': 'x',
                  'value': 'x_226',
                }
              ],
            },
            {
              'id': 'b0eaa766-94b3-4765-9fb9-b18cc906f3bc',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'b0eaa766-94b3-4765-9fb9-b18cc906f3bc',
                  'type': 'github',
                  'value': 'github_699',
                },
                {
                  'id': 'b0eaa766-94b3-4765-9fb9-b18cc906f3bc',
                  'type': 'x',
                  'value': 'x_699',
                }
              ],
            },
            {
              'id': '97d5becb-e9d1-42c4-8987-f48d9038c884',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '97d5becb-e9d1-42c4-8987-f48d9038c884',
                  'type': 'github',
                  'value': 'github_593',
                },
                {
                  'id': '97d5becb-e9d1-42c4-8987-f48d9038c884',
                  'type': 'x',
                  'value': 'x_593',
                }
              ],
            }
          ],
          'venue': {
            'id': 'f1225a1e-af46-4248-ace6-6400ffa43ccc',
            'name': 'メインホール',
          },
        }
      ],
    },
    {
      'id': 5,
      'name': 'プラチナグループ',
      'logo_name': 'platinum_group.png',
      'description': '2つ目のプラチナスポンサーの説明文です。',
      'url': 'https://platinum-group.example.com',
      'type': 'platinum',
      'sessions': [
        {
          'id': '4104ef03-5fe2-4922-aa03-0aed94f50451',
          'title': 'サンプルセッション 16',
          'description': 'これはサンプルセッション 16 の説明です。',
          'starts_at': '2024-10-06T07:25:59.167985+09:00',
          'ends_at': '2024-10-03T04:04:27.369219+09:00',
          'speakers': [
            {
              'id': 'aebeab39-bc6c-407b-ad1e-3bc547bd3747',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'aebeab39-bc6c-407b-ad1e-3bc547bd3747',
                  'type': 'github',
                  'value': 'github_685',
                },
                {
                  'id': 'aebeab39-bc6c-407b-ad1e-3bc547bd3747',
                  'type': 'x',
                  'value': 'x_685',
                }
              ],
            },
            {
              'id': '9f112cd4-20c7-46cf-835e-0560e4cfaefc',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '9f112cd4-20c7-46cf-835e-0560e4cfaefc',
                  'type': 'github',
                  'value': 'github_623',
                },
                {
                  'id': '9f112cd4-20c7-46cf-835e-0560e4cfaefc',
                  'type': 'x',
                  'value': 'x_623',
                }
              ],
            },
            {
              'id': 'c9f678a6-0e89-4bc6-ad4b-6132d978b3e6',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'c9f678a6-0e89-4bc6-ad4b-6132d978b3e6',
                  'type': 'github',
                  'value': 'github_778',
                },
                {
                  'id': 'c9f678a6-0e89-4bc6-ad4b-6132d978b3e6',
                  'type': 'x',
                  'value': 'x_778',
                }
              ],
            }
          ],
          'venue': {
            'id': 'bb58a8ca-f343-476d-80b8-0c3aa2878259',
            'name': 'セミナールームA',
          },
        },
        {
          'id': '43da83de-c225-4b22-a353-b325bf9d4e2c',
          'title': 'サンプルセッション 35',
          'description': 'これはサンプルセッション 35 の説明です。',
          'starts_at': '2024-10-03T06:08:16.59872+09:00',
          'ends_at': '2024-10-01T01:00:26.439215+09:00',
          'speakers': [
            {
              'id': '1c29a7e3-e08a-4cc1-ab7f-4c95bb8047b2',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '1c29a7e3-e08a-4cc1-ab7f-4c95bb8047b2',
                  'type': 'github',
                  'value': 'github_107',
                },
                {
                  'id': '1c29a7e3-e08a-4cc1-ab7f-4c95bb8047b2',
                  'type': 'x',
                  'value': 'x_107',
                }
              ],
            }
          ],
          'venue': {
            'id': 'f1225a1e-af46-4248-ace6-6400ffa43ccc',
            'name': 'メインホール',
          },
        },
        {
          'id': '95106b69-cb46-487c-b970-f065682b5da3',
          'title': 'サンプルセッション 36',
          'description': 'これはサンプルセッション 36 の説明です。',
          'starts_at': '2024-10-04T20:00:32.646231+09:00',
          'ends_at': '2024-10-04T01:24:51.694397+09:00',
          'speakers': [
            {
              'id': 'f92dbe0b-c498-446c-b2a5-548eaf1af632',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'f92dbe0b-c498-446c-b2a5-548eaf1af632',
                  'type': 'github',
                  'value': 'github_969',
                },
                {
                  'id': 'f92dbe0b-c498-446c-b2a5-548eaf1af632',
                  'type': 'x',
                  'value': 'x_969',
                }
              ],
            },
            {
              'id': '49bc82d0-7c19-4685-b41d-0ea93f0afb6c',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '49bc82d0-7c19-4685-b41d-0ea93f0afb6c',
                  'type': 'github',
                  'value': 'github_271',
                },
                {
                  'id': '49bc82d0-7c19-4685-b41d-0ea93f0afb6c',
                  'type': 'x',
                  'value': 'x_271',
                }
              ],
            },
            {
              'id': '2ad897b1-7cdb-4f28-9f2c-35c19ae07018',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '2ad897b1-7cdb-4f28-9f2c-35c19ae07018',
                  'type': 'github',
                  'value': 'github_160',
                },
                {
                  'id': '2ad897b1-7cdb-4f28-9f2c-35c19ae07018',
                  'type': 'x',
                  'value': 'x_160',
                }
              ],
            }
          ],
          'venue': {
            'id': 'f1225a1e-af46-4248-ace6-6400ffa43ccc',
            'name': 'メインホール',
          },
        },
        {
          'id': '8a2388f7-6bdf-4153-90e6-456fcb15f31e',
          'title': 'サンプルセッション 38',
          'description': 'これはサンプルセッション 38 の説明です。',
          'starts_at': '2024-10-04T07:41:55.171144+09:00',
          'ends_at': '2024-10-02T07:01:05.654107+09:00',
          'speakers': [
            {
              'id': '04b3e7c4-b7dd-4e17-b17c-c062dd08931a',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '04b3e7c4-b7dd-4e17-b17c-c062dd08931a',
                  'type': 'github',
                  'value': 'github_21',
                },
                {
                  'id': '04b3e7c4-b7dd-4e17-b17c-c062dd08931a',
                  'type': 'x',
                  'value': 'x_21',
                }
              ],
            }
          ],
          'venue': {
            'id': 'ab1395ec-1311-4928-9f99-50556ef58b32',
            'name': 'セミナールームB',
          },
        },
        {
          'id': 'afd83b9a-cd07-400d-b30b-6afcd1ceeba4',
          'title': 'サンプルセッション 44',
          'description': 'これはサンプルセッション 44 の説明です。',
          'starts_at': '2024-10-03T05:58:10.190142+09:00',
          'ends_at': '2024-10-05T16:10:28.955249+09:00',
          'speakers': [
            {
              'id': '57e3d167-f0c8-4a25-b522-fc85fb865f4a',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '57e3d167-f0c8-4a25-b522-fc85fb865f4a',
                  'type': 'github',
                  'value': 'github_329',
                },
                {
                  'id': '57e3d167-f0c8-4a25-b522-fc85fb865f4a',
                  'type': 'x',
                  'value': 'x_329',
                }
              ],
            },
            {
              'id': '50887997-c184-4287-a4a0-3b09c3ac7844',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '50887997-c184-4287-a4a0-3b09c3ac7844',
                  'type': 'github',
                  'value': 'github_300',
                },
                {
                  'id': '50887997-c184-4287-a4a0-3b09c3ac7844',
                  'type': 'x',
                  'value': 'x_300',
                }
              ],
            }
          ],
          'venue': {
            'id': 'ab1395ec-1311-4928-9f99-50556ef58b32',
            'name': 'セミナールームB',
          },
        },
        {
          'id': '00801678-db7e-4a22-827f-069c1a7013b6',
          'title': 'サンプルセッション 47',
          'description': 'これはサンプルセッション 47 の説明です。',
          'starts_at': '2024-10-06T08:03:34.300654+09:00',
          'ends_at': '2024-10-04T10:15:26.143492+09:00',
          'speakers': [
            {
              'id': '229c24d1-4559-49ac-8c65-0fcc11c7a39b',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '229c24d1-4559-49ac-8c65-0fcc11c7a39b',
                  'type': 'github',
                  'value': 'github_125',
                },
                {
                  'id': '229c24d1-4559-49ac-8c65-0fcc11c7a39b',
                  'type': 'x',
                  'value': 'x_125',
                }
              ],
            },
            {
              'id': '47837f02-95fe-4ec1-91c2-f8162f84bc22',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '47837f02-95fe-4ec1-91c2-f8162f84bc22',
                  'type': 'github',
                  'value': 'github_257',
                },
                {
                  'id': '47837f02-95fe-4ec1-91c2-f8162f84bc22',
                  'type': 'x',
                  'value': 'x_257',
                }
              ],
            },
            {
              'id': '3b38c73a-6795-413a-8653-c569c5254469',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '3b38c73a-6795-413a-8653-c569c5254469',
                  'type': 'github',
                  'value': 'github_218',
                },
                {
                  'id': '3b38c73a-6795-413a-8653-c569c5254469',
                  'type': 'x',
                  'value': 'x_218',
                }
              ],
            },
            {
              'id': '383ce042-1918-4de6-9a4e-ab5d36a61739',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '383ce042-1918-4de6-9a4e-ab5d36a61739',
                  'type': 'github',
                  'value': 'github_210',
                },
                {
                  'id': '383ce042-1918-4de6-9a4e-ab5d36a61739',
                  'type': 'x',
                  'value': 'x_210',
                }
              ],
            }
          ],
          'venue': {
            'id': 'f1225a1e-af46-4248-ace6-6400ffa43ccc',
            'name': 'メインホール',
          },
        },
        {
          'id': '0bfe411f-d90d-4272-8813-d4b6594ff1d6',
          'title': 'サンプルセッション 50',
          'description': 'これはサンプルセッション 50 の説明です。',
          'starts_at': '2024-10-04T09:06:07.028259+09:00',
          'ends_at': '2024-09-29T21:42:25.328658+09:00',
          'speakers': [
            {
              'id': '2fd84b80-cdc8-4e9b-b746-fb62a3208805',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '2fd84b80-cdc8-4e9b-b746-fb62a3208805',
                  'type': 'github',
                  'value': 'github_176',
                },
                {
                  'id': '2fd84b80-cdc8-4e9b-b746-fb62a3208805',
                  'type': 'x',
                  'value': 'x_176',
                }
              ],
            },
            {
              'id': 'a1a6baca-85a9-45bd-9a27-1e86499ac6cc',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': 'a1a6baca-85a9-45bd-9a27-1e86499ac6cc',
                  'type': 'github',
                  'value': 'github_633',
                },
                {
                  'id': 'a1a6baca-85a9-45bd-9a27-1e86499ac6cc',
                  'type': 'x',
                  'value': 'x_633',
                }
              ],
            },
            {
              'id': '884cddc4-20df-4454-8f60-cfb254fd26ea',
              'name': '',
              'avatar_url': null,
              'sns_accounts': [
                {
                  'id': '884cddc4-20df-4454-8f60-cfb254fd26ea',
                  'type': 'github',
                  'value': 'github_530',
                },
                {
                  'id': '884cddc4-20df-4454-8f60-cfb254fd26ea',
                  'type': 'x',
                  'value': 'x_530',
                }
              ],
            }
          ],
          'venue': {
            'id': 'f1225a1e-af46-4248-ace6-6400ffa43ccc',
            'name': 'メインホール',
          },
        }
      ],
    }
  ];

  test(
    'Sponsor with Session',
    () {
      final sponsorWithSession = json.map(SponsorWithSession.fromJson);
      print(sponsorWithSession);
    },
  );
}
