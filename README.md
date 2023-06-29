# Jenkins-Pipeline
Jenkins PipeLine for CI/CD



Task to create a CI-CD Pipeline for deployment


Output shown in the images.


![image](https://github.com/HetDesai8/Jenkins/assets/77717443/6725cbec-a740-47ef-9eb3-d53ad5379482)


Having two diffrent Branches Prod and Dev for seprate workload


-Dev Branch


![image](https://github.com/HetDesai8/Jenkins/assets/77717443/ee1baaf6-3c18-4207-be30-333f4330aa84)


-Prod Branch


![image](https://github.com/HetDesai8/Jenkins/assets/77717443/e8953f77-a4ed-4178-9bbc-d53c15fb02a4)


While deploying infrastructure form the Prod branch it will require a manual approval for the deployment to get started. On after that the pipeline will deploy resources.


-Manual approval Screen Shot


![image](https://github.com/HetDesai8/Jenkins/assets/77717443/a7e80068-659e-4743-abc1-73320c408839)


Changes will be triggered automatically and the deployment will start as soon as a new commit is done in repository.
We can also add Webhooks in GitHub to trigger the Pipeline as soon as changes are made for that we need to set a Payload url to the url where our jenkins server is running .

