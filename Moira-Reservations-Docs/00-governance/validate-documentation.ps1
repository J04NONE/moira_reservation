$root = Split-Path -Parent $PSScriptRoot
$phase = Join-Path $root '01-business-discovery-and-analysis'
$errors = @()
function Assert-Contains { param([string]$Text,[string]$Needle,[string]$Label) if ($Text -notmatch [regex]::Escape($Needle)) { $script:errors += "FAIL: $Label" } else { "PASS: $Label" } }
$expected = @('Documentation-Principles.md','Documentation-Architecture.md','Documentation-Lifecycle.md','Decision-Log.md','Review-Process.md','Document-Template.md')
$expected | ForEach-Object { if (Test-Path (Join-Path $PSScriptRoot $_)) { "PASS: governance $_" } else { $errors += "FAIL: governance $_" } }
$phaseFiles = @('README.md','01-Product-Vision.md','02-Lean-Canvas.md','03-Stakeholders.md','04-Discovery-and-Elicitation.md','05-Glossary.md','06-Business-Processes.md','07-Business-Rules.md','08-Assumptions.md','09-Discovery-Risks.md','10-Domain-Overview.md','11-Out-of-Scope.md')
$phaseFiles | ForEach-Object { if (Test-Path (Join-Path $phase $_)) { "PASS: phase $_" } else { $errors += "FAIL: phase $_" } }
$meta = @('Versión','Estado','Propietario','Clasificación','Confidencialidad','Revisores','Aprobadores','Última actualización','Próxima revisión')
$phaseFiles | ForEach-Object { $text = Get-Content -Raw (Join-Path $phase $_); $meta | ForEach-Object { Assert-Contains $text $_ "$($_) in $($args[0])" } }
$process = Get-Content -Raw (Join-Path $phase '06-Business-Processes.md'); $rules = Get-Content -Raw (Join-Path $phase '07-Business-Rules.md')
([regex]::Matches($process,'BR-\d{3}') | ForEach-Object Value | Sort-Object -Unique) | ForEach-Object { Assert-Contains $rules $_ "rule $_ exists" }
if ($errors.Count -gt 0) { $errors; exit 1 }; 'PASS: documentation validation complete'
