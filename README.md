# gcp-cloudrun-mlmodel-repo
Code repo to deploy the machine lerarning model in cloudrun.

## Steps to create ML model with the coupon data.
* This data studies whether a person will accept the coupon recommended to him in different driving scenarios.
  * https://archive.ics.uci.edu/dataset/603/in+vehicle+coupon+recommendation
  * Data has been copy under the data folder.

* Requirement text file has all the dependency python package libraries.

* Ipython notebook contains the code of data cleaning and model creation.
  * Local model creation.
  * Model used is XGBoost.
  * Generate the pkl file of the model and store in artifacts folder.

* Model pkl file has been copied to cloud storage bucket.

* The model is going to be served via the Flask app.

* Local Testing
  * Execute the flask app.
  * Run the "test-flask-output-local.sh" for the model prediction.

* Docker image
  * Containerize the flask app.
  * Push the model to GCP Artifact registry.
  * Auto build the new docker image with the Cloud Build.

* Deploy the code
  * Cloud build will deploy the code on Cloud Run.
  * Run the "deploy-curl-commands.sh" for the model creation.
