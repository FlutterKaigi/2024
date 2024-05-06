# Git のブランチ戦略

## ブランチについて

| ブランチ | 説明 |
| - | - |
| `main` | デフォルトブランチです。 |
| `feature/{name}` | あたらしい機能を作ります。 |
| `fix/{name}` | 問題を直します。 |
| `improvement/{name}` | いろいろなものをより良くします。 |
| `release/app-v{version}` | アプリをみんなに使ってもらうために、準備をします。 |
| `release/website-v{version}` | ウェブサイトをみんなに使ってもらうために、準備をします。 |
| `dependabot/{target}` | Dependabot が使うので、使うことはありません。 |

## ラベルについて

特定のブランチはプルリクエストを作ると、自動でプルリクエストにラベルが付きます。どのブランチにどのラベルが付くかは `.github/labeler.yaml` で設定されています。

| ブランチ | ラベル |
| - | - |
| `feature/*` | `feature` |
| `fix/*` | `bug` |
| `improvement/*` | `improvement` |
| `release/*` | `release` |

## 例

```mermaid
gitGraph
    commit
    branch "feature/foo" order: 2
    commit
    checkout "main"
    branch "dependabot/baz" order: 1
    commit
    checkout "main"
    merge "dependabot/baz"
    checkout "feature/foo"
    merge "main"
    commit
    commit
    checkout "main"
    branch "fix/bar" order: 3
    commit
    checkout "main"
    merge "feature/foo"
    checkout "fix/bar"
    merge "main"
    commit
    commit
    checkout "main"
    merge "fix/bar"
    branch "release/app-v1.2.0" order: 4
    commit
    checkout "main"
    merge "release/app-v1.2.0" tag: "app-v1.2.0"
```
