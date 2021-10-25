import UIKit

class Group99CellClass: NSObject, UITableViewDataSource, UITableViewDelegate {


	var tableView: UITableView?
	var tbl7Click: ((_ index: Int) -> ())?

 init(tblView: UITableView)  {		
	self.tableView = tblView
} 
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {		
	return 2
} 
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {		
	return 0.0
} 
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {		
	let cell = tableView.dequeueReusableCell(withIdentifier: "Group99Cell", for: indexPath) as? Group99Cell		
	return cell!
} 
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
}
}