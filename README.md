# Projet S2 : NightWatch
Jeux vidéo d'horreur pour le Projet S2 en SUP a EPITA Rennes
> This project is archived it is on read only.

!https://i.ibb.co/LtjSRsh/Capture-d-cran-2022-02-10-11-12-54.png

## Informations
Engine : Unity

Version d'unity : 2019.2.18f1

Moteur de rendu utilisé : HDRP

## Ajouter un fichier avec git LFS
### Installer git LFS
```shell
projetS2 $ git lfs install 
```

### Tack un fichier 
```shell
projetS2 $ git lfs track <file>
projetS2 $ git add .gitattributes
projetS2 $ git commit -m "add gitattributes"
projetS2 $ git push
```
Ensuite push normal du ficher

## Organisation

| Tâches                 |   1   |   2   |   3   |
| ---------------------- | :---: | :---: | :---: |
| Scénario               |  50   |  80   |  100  |
| Solo                   |  20   |  60   |  100  |
| IA                     |   0   |  50   |  100  |
| Multijoueur            |  20   |  50   |  100  |
| Environments graphique |  40   |  80   |  100  |
| Interface utilisateur  |  30   |  60   |  100  |
| Communication          |  35   |  70   |  100  |
| Latex                  |  35   |  70   |  100  |



## Documentation 

### Show notification (bottom right)

-   Show a notification

    ```csharp
    NotificationShowing.instance.Show("notification");
    ```

-   Stop showing (collapse the canvas)

    ```csharp
    NotificationShowing.instance.StopShowing();
    ```

-   See if the shower is currently showing

    ```csharp
    NotificationShowing.instance.IsShowing; //True if showing
    ```

    

### Show mission

>   Same that showing notification but with `MissionShowing`

-   Exemple 

    
```csharp
MissionShowing.instance.Show("mission");
```

