#!/bin/bash

flux check --pre

flux bootstrap github \
  --owner="$GITHUB_USER" \
  --repository=infra \
  --path=clusters/camillou-cluster \
  --personal