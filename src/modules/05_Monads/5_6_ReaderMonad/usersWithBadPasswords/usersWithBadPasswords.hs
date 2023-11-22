usersWithBadPasswords :: Reader UsersTable [User]
usersWithBadPasswords = do
  xs <- ask
  return [user | (user, password) <- xs, password == "123456"]