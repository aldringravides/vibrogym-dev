
# FOR THE CREATION OF USER
User.delete_all
User.create email: "admin@example.com",
            password: "password",
            full_name: "admin"