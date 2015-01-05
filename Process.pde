import java.io.*;

void Selection(File selection)
{
  if(selection.isDirectory())
  {
    println("\n---- Directory ---------------\n");
    // do something
    Execute app = new Execute(dataPath("kazuuuu"));
  }
  else if(selection.isFile())
  {
    println("\n---- File ---------------\n");
    // do something
    Execute app = new Execute("open -a Preview " + selection.getAbsolutePath());

  }
}

class Execute
{
  Execute(String command)
  {
    String result;
    try
    {
      Runtime rt = Runtime.getRuntime();
      Process p = rt.exec(command);
      InputStream is = p.getInputStream();
      InputStreamReader isr = new InputStreamReader(is);
      BufferedReader br = new BufferedReader(isr);
      while ((result = br.readLine()) != null)
      {
        System.out.println(result);
      }
    } 
    catch (IOException ex)
    {
      ex.printStackTrace();
    }
  }
}

