#1 an example query from the client

​ 	{
​ 	  movies {
​ 	    name
​ 	  }
  ​ }

# 2 JSON response

  {
​ 	  ​"data"​: {
​ 	    ​"movies"​: [
​ 	      {​"name"​: ​"Lord of the rings"​},
​ 	      {​"name"​: ​"The Notebook"​},
​ 	      {​"name"​: ​"Shutter Island"​}
​ 	    ]
​ 	  }
​ 	}

#3 postgres fix
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"
sudo service postgresql restart
