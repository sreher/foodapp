import FoodItem from "./FoodItem";
export default function Todo({ foodData, setFoodId }) {
  return (
    <div>
      {foodData.map((foodItem) => (
        <FoodItem setFoodId={setFoodId} key={foodItem.id} foodItem={foodItem} />
      ))}
    </div>
  );
}
