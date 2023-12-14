

resource "null_resource" "resource_internal" {
  provisioner "local-exec" {
      command = <<EOT
        curl -s -X POST https://${ipm_host}/api/v1/devices/${device_id}/resources/internal \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJaTE1UbGtlQmRpckVkVTVqLU9jM0ZscDlsY3lPNS1WbG9ld2ljMzBqZkZVIn0.eyJleHAiOjE2OTU3OTkzOTEsImlhdCI6MTY5NTc5NTc5MSwianRpIjoiYmIwNzk2YmUtYmJiYi00YjhiLTliY2ItNjE1YmQ3YzgzZTQ5IiwiaXNzIjoiaHR0cHM6Ly9pcG0tZXZhbDQud2VzdHVzMy5jbG91ZGFwcC5henVyZS5jb20vcmVhbG1zL3hyLWNtIiwiYXVkIjpbInhyLXdlYi1jbGllbnQiLCJyZWFsbS1tYW5hZ2VtZW50IiwiYWNjb3VudCJdLCJzdWIiOiJhYTMwNWYzZS00NjdiLTQ3OTYtYTA1Zi01ZDIwM2VjMWFmODUiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJ4ci13ZWItY2xpZW50Iiwic2Vzc2lvbl9zdGF0ZSI6IjljMmQxY2VmLWRjNmYtNDUxNi1hYmVjLTdkOWVlNTlkZDVkNSIsImFsbG93ZWQtb3JpZ2lucyI6WyJodHRwOi8vbG9jYWxob3N0OjQyMDEiLCJodHRwOi8vbG9jYWxob3N0OjgwODAiLCJodHRwczovL2lwbS1ldmFsNC53ZXN0dXMzLmNsb3VkYXBwLmF6dXJlLmNvbSIsImh0dHA6Ly9sb2NhbGhvc3Q6NDIwMCJdLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsiTkEiLCJvZmZsaW5lX2FjY2VzcyIsIlNBIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsicmVhbG0tbWFuYWdlbWVudCI6eyJyb2xlcyI6WyJ2aWV3LXJlYWxtIiwidmlldy1pZGVudGl0eS1wcm92aWRlcnMiLCJtYW5hZ2UtaWRlbnRpdHktcHJvdmlkZXJzIiwiaW1wZXJzb25hdGlvbiIsInJlYWxtLWFkbWluIiwiY3JlYXRlLWNsaWVudCIsIm1hbmFnZS11c2VycyIsInF1ZXJ5LXJlYWxtcyIsInZpZXctYXV0aG9yaXphdGlvbiIsInF1ZXJ5LWNsaWVudHMiLCJTQSIsInF1ZXJ5LXVzZXJzIiwibWFuYWdlLWV2ZW50cyIsIm1hbmFnZS1yZWFsbSIsIk5BIiwidmlldy1ldmVudHMiLCJ2aWV3LXVzZXJzIiwidmlldy1jbGllbnRzIiwibWFuYWdlLWF1dGhvcml6YXRpb24iLCJtYW5hZ2UtY2xpZW50cyIsInF1ZXJ5LWdyb3VwcyJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsInJlYWxtLWFkbWluIiwibWFuYWdlLXVzZXJzIiwidmlldy11c2VycyIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwicXVlcnktdXNlcnMiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiI5YzJkMWNlZi1kYzZmLTQ1MTYtYWJlYy03ZDllZTU5ZGQ1ZDUiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsImdyb3VwcyI6WyIvQWRtaW5pc3RyYXRvcnMiXSwicHJlZmVycmVkX3VzZXJuYW1lIjoieHItdXNlci0xIn0.Ye5rKxrcvXfEzIuKC86SbTPv7ombP0_HFZHMe-_j7AmJL-95_i7vdlcKk7jcn-91_dvOleY8U-9tvhZxRKl745ZvboU31BXuQ6ZqLm0AgJLS5cFWVB__leCLqG3cTlzZ6h46bksMpePicu0s878WVLk3CGgY6Pi-YVB3nPceGtgQIZiDTQCQu8PK1XmcIdSWG9OFfrkO-yUlF2WXlZLR7Xh5u1XfrBepGXpN-WWcMWrnd_kcHABKC0kExejisE5w-2gNEBk_i5mCzoHlBMWUgaEAqaMbb9j5P9r5HFQI1gOE-T4UiIkOvzgzImof_hEHNjfVRMS5tE1vk_GVi9qksA' \
--data '{
    "filename": "/inv/hostInitialization",
    "setConfig": "set"
}'
      EOT
  }
}

variable "ipm_host" {
  type = string
  default = "ipm-eval4.westus3.cloudapp.azure.com"
}

variable "device_id" {
  type = string
}

