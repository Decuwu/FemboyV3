import os
import requests
import zipfile
import shutil
import io

# Define the URLs
base_url = "https://github.com/Decuwu/FemboyV3/archive/refs/heads/main.zip"
luac_url = "https://raw.githubusercontent.com/Decuwu/FemboyV3/main/FemboyV3.luac"

# Get the %appdata% path
appdata = os.getenv('APPDATA')
target_dir = os.path.join(appdata, 'PopstarDevs', '2Take1Menu', 'scripts')
temp_extract_dir = os.path.join(target_dir, 'FemboyV3-main')

# Ensure the target directory exists
os.makedirs(target_dir, exist_ok=True)

# Download the repository zip file
response = requests.get(base_url)
if response.status_code == 200:
    with zipfile.ZipFile(io.BytesIO(response.content)) as zip_ref:
        zip_ref.extractall(target_dir)
    print(f"Downloaded and extracted repository to {temp_extract_dir}")
else:
    print(f"Failed to download the repository zip file with status code {response.status_code}")

# Move the FemboyFiles directory to the target directory
femboy_files_src = os.path.join(temp_extract_dir, 'FemboyFiles')
femboy_files_dest = os.path.join(target_dir, 'FemboyFiles')

if os.path.exists(femboy_files_src):
    if os.path.exists(femboy_files_dest):
        shutil.rmtree(femboy_files_dest)  # Remove existing directory if exists
    shutil.move(femboy_files_src, femboy_files_dest)
    print(f"Moved FemboyFiles to {femboy_files_dest}")
else:
    print(f"FemboyFiles directory not found in {temp_extract_dir}")

# Clean up the extracted temporary directory
if os.path.exists(temp_extract_dir):
    shutil.rmtree(temp_extract_dir)
    print(f"Deleted temporary directory {temp_extract_dir}")

# Download the FemboyV3.luac file
response = requests.get(luac_url)
if response.status_code == 200:
    luac_path = os.path.join(target_dir, "FemboyV3.luac")
    with open(luac_path, 'wb') as file:
        file.write(response.content)
    print(f"Downloaded FemboyV3.luac to {luac_path}")
else:
    print(f"Failed to download FemboyV3.luac with status code {response.status_code}")
