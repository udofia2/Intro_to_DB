import mysql.connector

def create_database():
    """Creates the alx_book_store database."""
    
    config = {
        'user': 'your_username',
        'password': 'your_password',
        'host': 'your_host',
        'raise_on_warnings': True
    }

    try:
        
        cnx = mysql.connector.connect(**config)
        
        
        cursor = cnx.cursor()
        
        
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        
        
        print("Database 'alx_book_store' created successfully!")
        
        
        cursor.close()
        cnx.close()
    
    except mysql.connector.Error as err:
        
        print(f"Error creating database: {err}")

if __name__ == "__main__":
    create_database()