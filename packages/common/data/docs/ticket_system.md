# チケット管理システムデータベース関連ドキュメント

## 概要

このドキュメントでは、チケット管理システムで使用されるデータベースの構造と主要な機能について説明します。システムは、イベントチケットの管理とユーザープロフィールの管理を効率的に行うために設計されています。

## テーブル構造

### 1. profiles（プロフィール）テーブル

このテーブルはユーザープロフィールを管理します。

### 2. tickets（チケット）テーブル

#### チケットタイプ（ticket_type enum）

1. sponsor_booth: スポンサーブースの運営で来場（ノベルティなし）
2. sponsor_invited: スポンサー招待チケット
3. individual_sponsor: 個人スポンサーチケット
4. general: 一般チケット
5. regular_speaker: 普通のセッション登壇者
6. sponsor_speaker: スポンサーセッション登壇チケット
