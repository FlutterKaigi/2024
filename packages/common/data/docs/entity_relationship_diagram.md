## 概要

FlutterKaigi 2024 では Supabase を使ってデータベースを構築しています。

そのデータベースの ER 図を以下に示します。

## ER 図

> [!NOTE]  
> 後々、以下の ER 図は自動生成する予定です。

```mermaid
erDiagram
    sponsors {
        smallserial id PK
        text name
        text logo_name
        text description
        text url
        sponsor_type type
    }

    staffs {
        smallserial id PK
        text name
        text icon_name
        text greeting
    }

    staff_social_networking_services {
        smallserial id PK
        smallserial staff_id FK
        social_networking_service_type type
        text value
    }

    staff_social_networking_services ||--|| staffs : "references"
```
