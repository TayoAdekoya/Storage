name: 'Terraform GitHub Actions'
on:
 - pull_request
 - push

jobs:
  terraform:
    name: 'Terraform'
    runs-on: ubuntu-latest
    steps:
    - name: checkout 
      uses: actions/checkout@master
    - name: terraform-init
      uses: hashicorp/terraform-github-actions@master
      with:
          tf_actions_version: 0.12.31
          tf_actions_subcommand: init
      env:
         GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    - name: terraform-validate
      uses: hashicorp/terraform-github-actions@master
      with:
          tf_actions_version: 0.12.31
          tf_actions_subcommand: validate
      env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    - name: terraform-plan
      uses: hashicorp/terraform-github-actions@master
      with:
          tf_actions_version: 0.12.31
          tf_actions_subcommand: plan
      env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          TF_ACTION_WORKSPACE: default
      run: 
          -var="rgname=${{secrets.TF_VAR_RGNAME}}""location: ${{secrets.TF_VAR_LOCATION}}"
