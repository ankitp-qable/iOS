import UIKit

class Group116CellClass: NSObject, UITableViewDataSource, UITableViewDelegate {


	var tableView: UITableView?
	var tbl2Click: ((_ index: Int) -> ())?

 init(tblView: UITableView)  {		
	self.tableView = tblView
} 
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {		
	return 3
} 
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {		
	return 73.0
} 
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {		
	let cell = tableView.dequeueReusableCell(withIdentifier: "Group116Cell", for: indexPath) as? Group116Cell		
	return cell!
} 
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
}
}