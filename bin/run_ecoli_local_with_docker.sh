echo Creating Input JSON File
python bin/create_inputs.py wdl/ecoli_base.json local > wdl/ecoli_local.json
echo Validating WDL
womtool validate wdl/ecoli.wdl
echo Running Pipeline via Cromwell Local
cromwell run wdl/ecoli.wdl -i wdl/ecoli_local.json
