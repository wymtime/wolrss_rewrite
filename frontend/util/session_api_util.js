const signup = (user) => $.ajax({
  url: 'api/users/new',
  method: 'POST',
  data: { user }
});

const login = (user) => $.ajax({
  url: 'api/session',
  method: 'POST',
  data: { user }
});

const logout = () => $.ajax({
  url: 'api/session',
  method: 'POST'
});
