<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;
use Carbon\Carbon;

class CreateSiteMap extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sitemap:create';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
      // create new sitemap object
      $sitemap = \App::make("sitemap");

      $sitemap->add(\URL::to('/'), Carbon::now()->toDateTimeString() , '1.0', 'weekly');
      $sitemap->add(\URL::to('/about'), Carbon::now()->toDateTimeString() , '0.9', 'weekly');
      $sitemap->add(\URL::to('/contact'), Carbon::now()->toDateTimeString() , '0.9', 'weekly');



      // get all services from db
      $posts= \DB::table('posts')->get();
      foreach ($posts as $post)
      {
        $sitemap->add(\URL::to('/'). "/posts/{$post->slug}", $post->updated_at, '0.8', 'weekly');
      }

      $products= \DB::table('products')->get();
      foreach ($products as $product)
      {
        $sitemap->add(\URL::to('/'). "/products/{$product->slug}", $product->updated_at, '0.8', 'weekly');
      }

      $projects= \DB::table('projects')->get();
      foreach ($projects as $project)
      {
        $sitemap->add(\URL::to('/'). "/projects/{$project->slug}", $product->updated_at, '0.8', 'weekly');
      }

      // generate your sitemap (format, filename)
      $sitemap->store('xml', 'sitemap');
    }
}
