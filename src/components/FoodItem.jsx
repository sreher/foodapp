import styles from "./fooditem.module.css";
export default function FoodItem({ foodItem, setFoodId }) {
  return (
    <div className={styles.itemContainer}>
      <img
        className={styles.itemImage}
        src={foodItem.image}
        alt={foodItem.title}
      />
      <div className={styles.itemContent}>
        <p className={styles.itemName}>{foodItem.title}</p>
      </div>
      <div className={styles.itemButtonContainer}>
        <button
          onClick={() => setFoodId(foodItem.id)}
          className={styles.itemButton}
        >
          View Recipes
        </button>
      </div>
    </div>
  );
}
