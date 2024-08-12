import Debug "mo:base/Debug";

actor DBank{
  var currentValue: Nat = 300;
  currentValue := 200;
  
  // let is constant immutable it means the value can't change
  let id = 2;
  let di = 3;

  let z = id +di;

  Debug.print(debug_show(currentValue));
  Debug.print(debug_show(z));
  // Nat is data type it means is natural number : from 0 positive
  public func topUp(amount: Nat){
    currentValue +=amount;
    Debug.print(debug_show(currentValue));
  };
  // topUp(); --> you can use this "dfx canister call dbank_backend topUp" in terminal
  // another way --> you can use candid UI, the first is you can paste in terminal: "dfx canister id __Candid_UI" and then you put the canister id into your browser. The second is you paste again "canister id dback_backend(it means your counter canister)" and finaly you copy your canister and put the form input in your browser and submit"
  
  // so next we create function to withdraw
  // allow users to withdraw an amount from the current values
  // and decrease the currentvalue by the amount
  public func withDraw(amount: Nat){
    let tempValue: Int = currentValue-amount;
    if (tempValue>=0){
      currentValue-=amount;
      Debug.print(debug_show(currentValue));
    }else{
      Debug.print("Amount too large, currentValue less than zero.")
    }
  };
}