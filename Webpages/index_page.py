import tkinter as tk
from tkinter import messagebox
import mysql.connector

# Function to check login credentials
def check_login():
    username = entry_username.get()
    password = entry_password.get()

    # Connect to the MySQL database
    try:
        connection = mysql.connector.connect(
            host="localhost",
            password="mysql_mysql_1!",
            database="gopark"
        )
        cursor = connection.cursor()
        query = "SELECT * FROM user WHERE name=%s AND pwd=%s"
        cursor.execute(query, (username, password))
        result = cursor.fetchone()

        if result:
            messagebox.showinfo("Login Success", "Welcome to GoPark!")
            # Redirect to the vehicle details page (this part needs to be implemented)
        else:
            messagebox.showerror("Login Failed", "Invalid username or password")

    except mysql.connector.Error as err:
        messagebox.showerror("Database Error", f"Error: {err}")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()

# Create the main window
root = tk.Tk()
root.title("GoPark - Log In")

# Create the logo and title
logo = tk.PhotoImage(file="logo1.jpg")  # Update this with the correct path
logo_label = tk.Label(root, image=logo)
logo_label.pack()

title_label = tk.Label(root, text="GoPark", font=("Arial", 24))
title_label.pack()

# Create the login form
frame = tk.Frame(root)
frame.pack(pady=20)

label_username = tk.Label(frame, text="Username")
label_username.grid(row=0, column=0, padx=10, pady=10)

entry_username = tk.Entry(frame)
entry_username.grid(row=0, column=1, padx=10, pady=10)

label_password = tk.Label(frame, text="Password")
label_password.grid(row=1, column=0, padx=10, pady=10)

entry_password = tk.Entry(frame, show="*")
entry_password.grid(row=1, column=1, padx=10, pady=10)

login_button = tk.Button(frame, text="Log In", command=check_login)
login_button.grid(row=2, columnspan=2, pady=20)

# Create the signup link
signup_frame = tk.Frame(root)
signup_frame.pack(pady=10)

signup_label = tk.Label(signup_frame, text="Don't have an account?")
signup_label.pack(side="left")

signup_button = tk.Button(signup_frame, text="Sign up", command=lambda: messagebox.showinfo("Sign Up", "Redirect to Sign Up Page"))
signup_button.pack(side="left")

root.mainloop()
