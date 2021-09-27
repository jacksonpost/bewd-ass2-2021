<?php
/**
* Template Name: Two Column Page Hey
*
*/

get_header();
?>

	<main id="primary" class="site-main">
        <p>This page rendered with page_two-columns custom template.</p>
        <div class="col-2"> 
            <?php
            while ( have_posts() ) :
                echo "<div>";
                the_post();

                get_template_part( 'template-parts/content', 'page' );
                echo "</div>";

                // If comments are open or we have at least one comment, load up the comment template.
                // if ( comments_open() || get_comments_number() ) :
                // 	comments_template();
                // endif;

            endwhile; // End of the loop.
            ?>
        </div>
	</main><!-- #main -->

<?php
get_sidebar();
get_footer();
