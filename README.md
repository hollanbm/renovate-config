# renovate-config

Renovate config presets

Example config to use this preset

```json
{
  "$schema": "https://docs.renovatebot.com/renovate-schema.json",
  "extends": ["github>hollanbm/renovate-config"]
}
```

## To create additional presets

1) Create a new file, with the preset config
2) add filename to your extends configuration

```json
{
  "$schema": "https://docs.renovatebot.com/renovate-schema.json",
  "extends": ["github>hollanbm/renovate-config/new_preset.json"]
}
```
