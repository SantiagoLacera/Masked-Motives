using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class InventoryDialog : MonoBehaviour
{

    public SelectedItem selectedItem;
    public NonSelectedItems nonSelectedItems;
    public SemiSelectedItem semiSelectedItem;
    public PickupSemiItemScript pickupSemiItemScript;
    public MixSelectItems mixSelectItems;

    public ItemCollision itemCollision;

    public TMP_Text Description;
    public TMP_Text NonDescription;
    public TMP_Text SemiDescription;
    public TMP_Text MixDescription;
    //Usable Items

    private string Crystal = "A shimmering, translucent gem imbued with mystical energy. " +
                            "Crystals are often used in spellcasting, enchanting, or as a source of power in magical rituals.";
    private string Weapon = "Treasures can include gold coins, precious gems, ancient relics, or powerful artifacts." +
                             "Collecting treasure can earn players wealth, unlock special abilities, or advance the storyline.";
    private string Bone = "Bones can be used in crafting powerful weapons, armor, or magical trinkets." +
                            "Some bones may even hold the spirits of fallen creatures, offering unique powers or insights when interacted with.";
    private string Sword = "Swords come in various forms, from elegant rapiers to massive broadswords, each with its own style and abilities." +
                            "They are essential for engaging in combat, slicing through enemies, and defending against attacks.";

    //Non-Usable Items


    private string Barrel = "Barrels can contain various items such as potions, food supplies, or even hidden treasures." +
                            "Players can break them open to reveal their contents or use them strategically to block pathways or create makeshift barricades in combat.";
    private string Jar = "Jars may hold mysterious concoctions, magical ingredients, or valuable relics." +
                           "Players can carefully examine them to uncover hidden secrets, solve puzzles, or gather essential resources for their journey.";
    private string MainRock = "In your silent vigil, you've seen the world transform, continents shift, and civilizations rise and fall like fleeting whispers in the wind.";
    

    //Semi-Usable Items

    private string Axe = "Arboreal Annihilator, a fearsome axe crafted with sinister purpose.";
    private string Gems = "A masterpiece of nature's design, a gem able to control the Time and space, which one would you pick?.";
    private string Potions = "A collection of potions that hold within them the power to reshape destiny itself.";
    private string PickAxe = "Crafted eons ago by an enigmatic society whose name has long faded into obscurity, this legendary tool is said to possess the ability to open anything";
    private string Keys = "These are the Mysterium Keys, ancient artifacts of unfathomable power and enigmatic purpose.";

    //Mix-Usable Items
    private string Tree = "Past this tree there is a forgotten weapons";
    private string WoodenChest = "Within its confines lies a treasure of unparalleled significance: a sword of unparalleled craftsmanship and boundless potential.";
    private string Sarcophagus = "Within the Sarcophagus, shadows dance in the flickering light, casting an eerie glow upon the remnants of a forgotten era";




    private void Update()
    {

        if (itemCollision.TypedPicked != "Default")
        {
            if (itemCollision.TypedPicked == "Items")
            {
                LoadDescription(selectedItem);
                return;
            }

            else if (itemCollision.TypedPicked == "NonItem")
            {
                LoadNonDescription(nonSelectedItems);
                return;
            }

            else if (itemCollision.TypedPicked == "SemiItem")
            {
                LoadSemiDescription(semiSelectedItem);
                return;
            }
            else if(itemCollision.TypedPicked == "MixUsable")
            {
                LoadMixDescription(mixSelectItems);
                return;
            }
        }
    }


    public void LoadDescription(SelectedItem selectedItem)
    {
        //Items Description
        if (selectedItem.ItemPicked == 0)
        {
            Description.text = Crystal;
        }
        else if (selectedItem.ItemPicked == 1)
        {
            Description.text = Bone;
        }
        else if (selectedItem.ItemPicked == 2)
        {
            Description.text = Sword;
        }

        else if (selectedItem.ItemPicked == 3)
        {
            Description.text = Weapon;
        }

    }
    public void LoadNonDescription(NonSelectedItems nonSelectedItems)
    {
        //NonItems Description
        if (nonSelectedItems.ItemPicked == 0)
        {
            NonDescription.text = Barrel;
        }
        else if (nonSelectedItems.ItemPicked == 1)
        {
            NonDescription.text = Jar;
        }
        else if (nonSelectedItems.ItemPicked == 2)
        {
            NonDescription.text = MainRock;
        }
    }

    public void LoadSemiDescription(SemiSelectedItem semiSelectedItem)
    {
        //SemiItems Description

        if (semiSelectedItem.ItemPicked >= 0 && semiSelectedItem.ItemPicked < 4)
        {
            SemiDescription.text = Potions;
        }
        else if (semiSelectedItem.ItemPicked == 4)
        {
            SemiDescription.text = Axe;
        }
        else if (semiSelectedItem.ItemPicked >= 5 && semiSelectedItem.ItemPicked < 10)
        {
            SemiDescription.text = Gems;
        }
        else if(semiSelectedItem.ItemPicked == 10)
        {
            SemiDescription.text = PickAxe;
        }
        else if (semiSelectedItem.ItemPicked >= 11 && semiSelectedItem.ItemPicked < 16)
        {
            SemiDescription.text = Keys;
        }
    }

    public void LoadMixDescription(MixSelectItems mixSelectItems)
    {
        //Items Description
        if (mixSelectItems.ItemPicked == 0)
        {
            MixDescription.text = Sarcophagus;
        }
        else if (mixSelectItems.ItemPicked == 1)
        {
            MixDescription.text = Tree;
        }
        else if (mixSelectItems.ItemPicked == 2)
        {
            MixDescription.text = WoodenChest;
        }

    }
}







