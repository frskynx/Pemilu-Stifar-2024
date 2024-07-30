<?php
class Stifar_model extends CI_Model{

  public function create($table, $data){
        return $this->db->insert($table, $data);
  }

  public function read($table){
    return $this->db->get($table);
  }

  public function readWhereMore($table, ...$conditions) {
    $array = array();
    for ($i = 0; $i < count($conditions); $i += 2) {
        $condition = $conditions[$i];
        $comparison = $conditions[$i + 1];
        $array[$condition] = $comparison;
    }
    return $this->db->get_where($table, $array);
  }

  public function readWhere($table, $col)
	{
		$result = $this->db->get_where($table, ['id' => $id])->row();
		return $result;
	}

  public function updateWhare($tabel, $data, $condition, $comparison){
    $this->db->where($condition, $comparison);
    $this->db->update($tabel, $data);
  }

  public function deleteWhere($tabel, $condition, $comparation){
    return $this->db->delete($tabel, array($condition => $comparation));
}

  public function rules()
	{
		return [
			[
				'field' => 'nim',
				'label' => 'NIM',
				'rules' => 'required',
        'required|min_length[10]|max_length[10]',
        array(
          'required'      => 'duh! NIM anda tidak sesuai format :(',
        )
			]
		];
	}
}