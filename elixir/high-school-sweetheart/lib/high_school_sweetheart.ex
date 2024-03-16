defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.first()
  end

  def initial(name) do
    initial =
      name
      |> first_letter()
      |> String.upcase()

    initial <> "."
  end

  def initials(full_name) do
    [first_name, last_name] = String.split(full_name, " ")
    initial(first_name) <> " " <> initial(last_name)
  end

  def pair(full_name1, full_name2) do
    pair_names = "**     #{initials(full_name1)}  +  #{initials(full_name2)}     **"

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    #{pair_names}
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
