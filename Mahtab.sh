echo "***********************************"
echo "** Developed by Mahtab Chowdhury **"
echo "***********************************"
echo ""

echo "******************************Welcome TO MAHTAB'S RESTAURANT ORDERING SYSTEM*******************************"
echo "______________________________________________________________________________________________________"
echo ""

echo "########################################### MENU ITEM ##################################################"
echo "______________________________________________________________________________________________________"
echo "______________________________________________________________________________________________________"
echo " Item No_________FOOD Name_________________Size____________________________Price_____"

echo "   1          Chicken Pizza             6/8/10/12 inches                150/170/200/250 Tk"
echo "   2          Chicken Steak             100/200/300/400 g               200/300/400/500 Tk"
echo "   3          Fried chicken             150/200/250 g                   150/170/200 Tk"
echo "   4          Burgers                   chicken/egg/vegetables          150/50/40 Tk"
echo "   5          Chicken soup              150/250/300 g                   70/120/150 tk"
echo "   6          Mojo                      250/500/1/2 L                   30/50/80/120 tk"
echo "   7          Coffee                    200 mL                          50/60 tk"
echo "   8          Cake                      1/2/2.5/3/4 pound               120/170/220/260/300 Tk"
echo "   9          French fries              150/200/250/300 g               50/70/100/130 tk"
echo "   10         Special Bread             150/200/250/350 g               70/100/120/170 Tk"
echo "________________________________________________________________________________________________________"
echo "________________________________________________________________________________________________________"

total_price=0  # Initialize total bill amount
order_items=()  # Array to store the items ordered

read -p "Do you want to order (yes-1/no-2): " order

while (($order == 1))
do
    read -p "Please Enter your name: " name
    read -p "Please choose the food item: " item

    # Handling each food item ordering
    case $item in
        1) # Chicken Pizza
            echo -e "\nHere is our Chicken Pizza list"
            echo "_____________________________________"
            echo "ITEM_NO________SIZE________PRICE"
            echo "  1           6 inches     150 tk "
            echo "  2           8 inches     170 tk"
            echo "  3           10 inches    200 tk"
            echo "  4           12 inches    250 tk"
            echo " "
            read -p "Which size of pizza you want to order: " pizza_size
            read -p "How many pizzas do you want: " pizza_quntity
            case $pizza_size in
                1) price=150 ;;
                2) price=170 ;;
                3) price=200 ;;
                4) price=250 ;;
                *) echo "Wrong Input!"; continue ;;
            esac
            total_price=$((total_price + price * pizza_quntity))
            order_items+=("Chicken Pizza - Size: ${pizza_size} inches, Quantity: ${pizza_quntity}, Price: $((price * pizza_quntity)) Tk")
            ;;
        
        2) # Chicken Steak
            echo -e "\nChicken Steak List"
            echo "_____________________________________"
            echo "ITEM_NO________SIZE________PRICE"
            echo "  1           100 g       200 Tk "
            echo "  2           200 g       300 Tk"
            echo "  3           300 g       400 Tk"
            echo "  4           400 g       500 Tk"
            echo " "
            read -p "Which size of steak you want: " steak
            read -p "How many steaks do you want: " steak_qunt
            case $steak in
                1) price=200 ;;
                2) price=300 ;;
                3) price=400 ;;
                4) price=500 ;;
                *) echo "Wrong Input!"; continue ;;
            esac
            total_price=$((total_price + price * steak_qunt))
            order_items+=("Chicken Steak - Size: ${steak}00 g, Quantity: ${steak_qunt}, Price: $((price * steak_qunt)) Tk")
            ;;
        
        3) # Fried Chicken
            echo -e "\nFried Chicken"
            echo "_____________________________________"
            echo "ITEM_NO________SIZE________PRICE"
            echo "  1           150 g       100 Tk "
            echo "  2           200 g       120 Tk"
            echo "  3           250 g       150 Tk"
            echo " "
            read -p "Which size of fried chicken you want: " chicken
            read -p "How many fried chickens do you want: " chik_qunt
            case $chicken in
                1) price=100 ;;
                2) price=120 ;;
                3) price=150 ;;
                *) echo "Wrong Input!"; continue ;;
            esac
            total_price=$((total_price + price * chik_qunt))
            order_items+=("Fried Chicken - Size: ${chicken}00 g, Quantity: ${chik_qunt}, Price: $((price * chik_qunt)) Tk")
            ;;
        
        4) # Burgers
            echo -e "\nBurgers"
            echo "_____________________________________"
            echo "ITEM_NO________TYPE________PRICE"
            echo "  1           Chicken      150 Tk "
            echo "  2           Egg          50 Tk"
            echo "  3           Vegetables   40 Tk"
            echo " "
            read -p "Which type of burger you want: " burg
            read -p "How many burgers do you want: " burg_qunt
            case $burg in
                1) price=150 ;;
                2) price=50 ;;
                3) price=40 ;;
                *) echo "Wrong Input!"; continue ;;
            esac
            total_price=$((total_price + price * burg_qunt))
            order_items+=("Burger - Type: ${burg}, Quantity: ${burg_qunt}, Price: $((price * burg_qunt)) Tk")
            ;;
        
        5) # Chicken Soup
            echo -e "\nChicken Soup"
            echo "_____________________________________"
            echo "ITEM_NO________SIZE________PRICE"
            echo "  1           150 g       70 Tk "
            echo "  2           250 g       120 Tk"
            echo "  3           300 g       150 Tk"
            echo " "
            read -p "Which size of chicken soup you want: " soup
            read -p "How many chicken soups do you want: " soup_qunt
            case $soup in
                1) price=70 ;;
                2) price=120 ;;
                3) price=150 ;;
                *) echo "Wrong Input!"; continue ;;
            esac
            total_price=$((total_price + price * soup_qunt))
            order_items+=("Chicken Soup - Size: ${soup}00 g, Quantity: ${soup_qunt}, Price: $((price * soup_qunt)) Tk")
            ;;
        
        6) # Mojo
            echo -e "\nMojo"
            echo "_____________________________________"
            echo "ITEM_NO________SIZE________PRICE"
            echo "  1           250 mL       30 Tk "
            echo "  2           500 mL       50 Tk"
            echo "  3           1 L          80 Tk"
            echo "  4           2 L          120 Tk"
            echo " "
            read -p "Which size of Mojo you want: " mojo
            read -p "How many Mojos do you want: " mojo_qunt
            case $mojo in
                1) price=30 ;;
                2) price=50 ;;
                3) price=80 ;;
                4) price=120 ;;
                *) echo "Wrong Input!"; continue ;;
            esac
            total_price=$((total_price + price * mojo_qunt))
            order_items+=("Mojo - Size: ${mojo}00 mL, Quantity: ${mojo_qunt}, Price: $((price * mojo_qunt)) Tk")
            ;;
        
        7) # Coffee
            echo -e "\nCoffee"
            echo "_____________________________________"
            echo "ITEM_NO________SIZE________PRICE"
            echo "  1           200 mL       60 Tk "
            echo "  2           200 mL Hot    50 Tk"
            echo " "
            read -p "Which coffee size do you want: " coffee
            read -p "How many coffees do you want: " coffee_qunt
            case $coffee in
                1) price=60 ;;
                2) price=50 ;;
                *) echo "Wrong Input!"; continue ;;
            esac
            total_price=$((total_price + price * coffee_qunt))
            order_items+=("Coffee - Size: ${coffee}00 mL, Quantity: ${coffee_qunt}, Price: $((price * coffee_qunt)) Tk")
            ;;
        
        8) # Cake
            echo -e "\nCake"
            echo "_____________________________________"
            echo "ITEM_NO________SIZE________PRICE"
            echo "  1           1 pound       120 Tk "
            echo "  2           2 pound       170 Tk"
            echo "  3           2.5 pound     220 Tk"
            echo "  4           3 pound       260 Tk"
            echo "  5           4 pound       300 Tk"
            echo " "
            read -p "Which size of cake do you want: " cake
            read -p "How many cakes do you want: " cake_qunt
            case $cake in
                1) price=120 ;;
                2) price=170 ;;
                3) price=220 ;;
                4) price=260 ;;
                5) price=300 ;;
                *) echo "Wrong Input!"; continue ;;
            esac
            total_price=$((total_price + price * cake_qunt))
            order_items+=("Cake - Size: ${cake} pound, Quantity: ${cake_qunt}, Price: $((price * cake_qunt)) Tk")
            ;;
        
        9) # French Fries
            echo -e "\nFrench Fries"
            echo "_____________________________________"
            echo "ITEM_NO________SIZE________PRICE"
            echo "  1           150 g       50 Tk "
            echo "  2           200 g       70 Tk"
            echo "  3           250 g       100 Tk"
            echo "  4           300 g       130 Tk"
            echo " "
            read -p "Which size of fries you want: " fries
            read -p "How many French fries do you want: " fries_qunt
            case $fries in
                1) price=50 ;;
                2) price=70 ;;
                3) price=100 ;;
                4) price=130 ;;
                *) echo "Wrong Input!"; continue ;;
            esac
            total_price=$((total_price + price * fries_qunt))
            order_items+=("French Fries - Size: ${fries}00 g, Quantity: ${fries_qunt}, Price: $((price * fries_qunt)) Tk")
            ;;
        
        10) # Special Bread
            echo -e "\nSpecial Bread"
            echo "_____________________________________"
            echo "ITEM_NO________SIZE________PRICE"
            echo "  1           150 g       70 Tk "
            echo "  2           200 g       100 Tk"
            echo "  3           250 g       120 Tk"
            echo "  4           350 g       170 Tk"
            echo " "
            read -p "Which size of bread you want: " bread
            read -p "How many breads do you want: " bread_qunt
            case $bread in
                1) price=70 ;;
                2) price=100 ;;
                3) price=120 ;;
                4) price=170 ;;
                *) echo "Wrong Input!"; continue ;;
            esac
            total_price=$((total_price + price * bread_qunt))
            order_items+=("Special Bread - Size: ${bread}00 g, Quantity: ${bread_qunt}, Price: $((price * bread_qunt)) Tk")
            ;;
        
        *) echo "Wrong Input!"; continue ;;
    esac

    read -p "Do you want to order more items (yes-1/no-2): " order2
    if ((order2 == 2))
    then
        # Option to cancel order
        read -p "Do you want to cancel the order (yes-1/no-2): " cancel_order
        if ((cancel_order == 1))
        then
            total_price=0
            order_items=()
            echo -e "Your order has been canceled!\n"
            break
        fi
        break
    fi
done

echo -e "__________________________________________________________________________"
echo "$name, your bill is ready!!!!"
echo "Thanks, $name for purchasing food from our restaurant!"
echo -e "Please, check your items\n" 
echo -e "Please pay the bill and wait for collecting the food!"
echo -e "__________________________________________________________________________"
echo "                                     YOUR BILL IS: $total_price"
echo -e  "\nThank you for purchasing food from our restaurant!!!!\n\n"

# Saving items and total bill to the file
echo "$name, Ordered Items:" >> "$name.txt"
for item in "${order_items[@]}"; do
    echo "$item" >> "$name.txt"
done
echo "$name, Total Bill = $total_price" >> "$name.txt"

