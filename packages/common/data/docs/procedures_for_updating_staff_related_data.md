# スタッフ関連データの更新手順

1. 必要なデータをスタッフから受け取る
2. [supabase/seed.sql] と [supabase/seed-storage/staffs] 配下の画像を更新する
3. プルリクエストを提出する
4. プルリクエストを承認もらったらマージする
5. [supabase/seed.sql] と [supabase/seed-storage/staffs] を元に本番のスタッフ関連データを手動更新する

※ 更新することはほぼ無いと思われるため自動化は行っていない。

[supabase/seed.sql]: https://github.com/FlutterKaigi/2024/blob/main/packages/common/data/supabase/seed.sql

[supabase/seed-storage/staffs]: https://github.com/FlutterKaigi/2024/tree/main/packages/common/data/supabase/seed-storage/staffs
