# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ProjectManagementExample.Repo.insert!(%ProjectManagementExample.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias ProjectManagementExample.Repo
alias ProjectManagementExample.Management.Project

Repo.insert! %Project{
  title: "Super Cool Project",
  description: "This project is the best ever ever ever"
}

Repo.insert! %Project{
  title: "okay Project",
  description: "This project is just okay"
}

Repo.insert! %Project{
  title: "hard project",
  description: "This project really should be thrown away and replaced"
}
