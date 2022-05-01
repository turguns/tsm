<?php
$shop = array( array("English"=>"hi", "Kyrgyz"=>"Salam" , "audio"=>15),
               array("English"=>"Bye", "Kyrgyz"=>"Korushkoncho" , "audio"=>25),
               array("English"=>"Welcome", "Kyrgyz"=>"Kosh keldiniz" , "audio"=>7) 
             ); 
?>
<?php if (count($shop) > 0): ?>
<table>
  <thead>
    <tr>
      <th><?php echo implode('</th><th>', array_keys(current($shop))); ?></th>
    </tr>
  </thead>
  <tbody>
<?php foreach ($shop as $row): array_map('htmlentities', $row); ?>
    <tr>
      <td><?php echo implode('</td><td>', $row); ?></td>
    </tr>
<?php endforeach; ?>
  </tbody>
</table>
<?php endif; ?>


