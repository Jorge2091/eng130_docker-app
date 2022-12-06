import os
bucket = False
try:
    bucket = os.environ['BUCKET']
except:
    print("no variable2")
if bucket:
    print("bucket variable is read")
    print(bucket)
    try:
        os.system(f"docker compose up --env-file .env BUCKET={bucket}")
    except:
        os.system(f"sudo docker compose up --env-file .env -e BUCKET={bucket}")
else:
    try:
        os.system("terraform apply -auto-approve")

    except:
        print("no *.tf file and no BUCKET variable, or connection to AWS failed, check credentials")
        print("will start with no bucket")
    
    try:
        os.system(f"docker compose up --env-file .env")
    except:
       
        os.system(f"sudo docker compose up --env-file .env")