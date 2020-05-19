using System.IO;
using UnityEngine;
using System.Runtime.Serialization.Formatters.Binary;

public static class SaveSystem 
{

    public static void SaveGame(PlayerManagerLo playerManagerLo, bool[] activeComponents, bool[] activeMissions, int currentMission, bool enemyActive, Vector3 enemyPosition)
    {
        BinaryFormatter formatter = new BinaryFormatter();
        string path = Application.persistentDataPath + "/saveData.persistentData";
        FileStream stream = new FileStream(path, FileMode.Create);
        
        PersistentData data = new PersistentData(playerManagerLo, activeComponents, activeMissions, currentMission, NightShiftingScript.night, enemyActive, enemyPosition);
        
        formatter.Serialize(stream, data);
        stream.Close();
        
    }

    public static PersistentData LoadGame()
    {
        string path = Application.persistentDataPath + "/saveData.persistentData";

        if (File.Exists(path))
        {
            BinaryFormatter formatter = new BinaryFormatter();
            FileStream stream = new FileStream(path, FileMode.Open);
            
            PersistentData data = formatter.Deserialize(stream) as PersistentData;
            stream.Close();
            return data;
        }
        else
        {
            Debug.LogError("persistent data file couldn't be found loading process aborted");
            return null;
        }
        
    }
    
    
    
}
