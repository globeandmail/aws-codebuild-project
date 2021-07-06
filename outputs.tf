output "codebuild_project_id" {
  value = aws_codebuild_project.project.id
}

output "codebuild_project_arn" {
  value = aws_codebuild_project.project.arn
}

output "artifact_bucket_id" {
  value = aws_s3_bucket.artifact.id
}

output "artifact_bucket_arn" {
  value = aws_s3_bucket.artifact.arn
}

output "code_build_iam_role_arn" {
  value = aws_iam_role.codebuild.arn
}