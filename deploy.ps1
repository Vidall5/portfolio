# Uso: .\deploy.ps1 "mensagem opcional"
# Faz git add + commit + push. A Vercel deploya sozinha em ~30s.
$msg = if ($args.Count -gt 0) { $args -join ' ' } else { "update: $(Get-Date -Format 'yyyy-MM-dd HH:mm')" }
git add .
if (git diff --cached --quiet) { Write-Host "Sem mudanças pra comitar."; exit 0 }
git commit -m $msg
git push
Write-Host "`nPush enviado. Acompanhe o deploy em https://vercel.com/dashboard"
