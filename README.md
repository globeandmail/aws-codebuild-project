## aws-codebuild-project

Creates a codebuild project and S3 artifact bucket to be used with codepipeline.

## Usage

```hcl
module "codebuild_project" {
  source = "github.com/globeandmail/aws-codebuild-project?ref=1.0"

  name        = var.name
  deploy_type = var.deploy_type
  ecr_name    = var.ecr_name
  tags        = var.tags
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| deploy\_type | \(Required\) Must be one of the following \( ecr, ecs, lambda \) | string | n/a | yes |
| name | \(Required\) The name of the codebuild project and artifact bucket | string | n/a | yes |
| build\_compute\_type | \(Optional\) build environment compute type | string | `"BUILD_GENERAL1_SMALL"` | no |
| buildspec | build spec file other than buildspec.yml | string | `"buildspec.yml"` | no |
| codebuild\_image | \(Optional\) The codebuild image to use | string | `"aws/codebuild/amazonlinux2-x86_64-standard:1.0"` | no |
| ecr\_name | \(Optional\) The name of the ECR repo. Required if var.deploy\_type is ecr or ecs | string | `"null"` | no |
| logs\_retention\_in\_days | \(Optional\) Days to keep the cloudwatch logs for this codebuild project | number | `"14"` | no |
| tags | \(Optional\) A mapping of tags to assign to the resource | map | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| artifact\_bucket\_arn |  |
| artifact\_bucket\_id |  |
| codebuild\_project\_arn |  |
| codebuild\_project\_id |  |