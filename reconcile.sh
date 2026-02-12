#!/bin/bash

TITLE=$(grep title intent.yml | cut -d '"' -f2)

cat > index.html <<EOF
<!DOCTYPE html>
<html>
<head>
  <title>$TITLE</title>
</head>
<body>
  <h1>$TITLE</h1>
  <p>Déployé via GitOps</p>
</body>
</html>
EOF
