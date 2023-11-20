# Go to the app folder
cd /app

# Extract the compressed dataset file
echo "Extracting a compressed file..."
/usr/bin/tar -xzvf xml.tar.gz
echo "Done extracting the compressed file"

# Create a database
/usr/bin/mysql -h localhost -u root -e "create database askubuntu;"

# Import DDL statements
/usr/bin/mysql -h localhost -u root askubuntu < /app/ddl.sql

# Import the dataset files
echo "Importing large dataset files..."
/usr/bin/mysql -h localhost -u root -e "LOAD XML LOCAL INFILE '/app/xml/Badges.xml' INTO TABLE askubuntu.badges;"
/usr/bin/mysql -h localhost -u root -e "LOAD XML LOCAL INFILE '/app/xml/Comments.xml' INTO TABLE askubuntu.comments;"
/usr/bin/mysql -h localhost -u root -e "LOAD XML LOCAL INFILE '/app/xml/PostHistory.xml' INTO TABLE askubuntu.post_history;"
/usr/bin/mysql -h localhost -u root -e "LOAD XML LOCAL INFILE '/app/xml/PostLinks.xml' INTO TABLE askubuntu.post_links;"
/usr/bin/mysql -h localhost -u root -e "LOAD XML LOCAL INFILE '/app/xml/Posts.xml' INTO TABLE askubuntu.posts;"
/usr/bin/mysql -h localhost -u root -e "LOAD XML LOCAL INFILE '/app/xml/Tags.xml' INTO TABLE askubuntu.tags;"
/usr/bin/mysql -h localhost -u root -e "LOAD XML LOCAL INFILE '/app/xml/Users.xml' INTO TABLE askubuntu.users;"
/usr/bin/mysql -h localhost -u root -e "LOAD XML LOCAL INFILE '/app/xml/Votes.xml' INTO TABLE askubuntu.votes;"
echo "Done importing large dataset files"

echo "Finished initializing the container"