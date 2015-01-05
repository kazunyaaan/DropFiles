void SelectFilesBotton()
{
  selectFolder("Select files ...", "selectEvent");
}

void selectEvent(File selection)
{
  if (selection == null)
  {
    println("..Select close or cancel");
  }
  else
  {
    Selection(selection);
  }
}

void dropEvent(DropEvent theDropEvent)
{
  if (theDropEvent.isFile())
  {
    Selection(theDropEvent.file());
  }
}

