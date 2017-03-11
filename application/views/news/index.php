
<?php foreach ($news as $news_item): ?>

        <a href="<?php echo site_url('news/'.$news_item['slug']); ?>"><h3><?php echo $news_item['title']; ?></h3></a>
        <div class="main">
                <?php 
				$rest = substr($news_item['text'], 0, 500);
				echo $rest; ?>
        </div>
        <p><a href="<?php echo site_url('news/'.$news_item['slug']); ?>">View article</a></p>

<?php endforeach; ?>