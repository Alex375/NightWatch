using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class OptionMenu : MonoBehaviour
{
    public void ResetSolo()
    {
        string path = Application.persistentDataPath + "/saveData.persistentData";
        try
        {
            File.Delete(path);
        }
        catch (IOException)
        {
            // Ignored
        }
    }
}
