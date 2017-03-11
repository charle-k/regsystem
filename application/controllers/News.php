<?php
class News extends CI_Controller {

        public function __construct()
        {
                parent::__construct();
                $this->load->model('news_model');
				$this->load->model('users_model');
                $this->load->helper('url_helper');
        }

       		
		public function index()
		{
		/* Display a list of news articles */
        $data['news'] = $this->news_model->get_news();
        $data['title'] = 'News archive';

        $this->load->view('templates/header', $data);
        $this->load->view('news/index', $data);
        $this->load->view('templates/footer');
		}

        		
		public function view($slug = NULL)
		{
        /* show a news article */
		$data['news_item'] = $this->news_model->get_news($slug);

        if (empty($data['news_item']))
        {
                show_404();
        }

        $data['title'] = $data['news_item']['title'];

        $this->load->view('templates/header', $data);
        $this->load->view('news/view', $data);
        $this->load->view('templates/footer');
		}
		
		
		
	public function create()
	{
    $this->load->helper('form');
    $this->load->library('form_validation');

    $data['title'] = 'Create a news item';

    $this->form_validation->set_rules('title', 'Title', 'required');
    $this->form_validation->set_rules('text', 'Text', 'required');

    if ($this->form_validation->run() === FALSE)
    {
        $this->load->view('templates/header', $data);
        $this->load->view('news/create');
        $this->load->view('templates/footer');

    }
    else
    {
        $this->news_model->set_news();
        $this->load->view('news/success');
    }
	}
	
	
	public function register()
	{
	/* Register a new user */	
    $this->load->helper('form');
    $this->load->library('form_validation');

    $data['title'] = 'Register a New User';

    $this->form_validation->set_rules('username', 'Username', 'required');
    $this->form_validation->set_rules('email', 'Email', 'required');
	$this->form_validation->set_rules('password', 'password', 'required');

    if ($this->form_validation->run() === FALSE)
    {
        $this->load->view('templates/header', $data);
        $this->load->view('news/register');
        $this->load->view('templates/footer');

    }
    else
    {
        $this->users_model->register();
		$this->load->view('templates/header', $data);
        $this->load->view('news/register_success');
        $this->load->view('templates/footer');
        
    }
	}
	
	public function login()
	{
	/* Login in a user after checking if username and password details are correct */
    $this->load->helper('form');
    $this->load->library('form_validation');

    $data['title'] = 'Login User';

    $this->form_validation->set_rules('username', 'Username', 'required');
    $this->form_validation->set_rules('password', 'Password', 'required');

    if ($this->form_validation->run() === FALSE)
    {
        $this->load->view('templates/header', $data);
        $this->load->view('news/login');
        $this->load->view('templates/footer');

    }
    else
    {
        if ($this->users_model->login())
			
			{
				$data['title'] = 'Login Successful'	;	
				$this->load->view('templates/header', $data);
				$this->load->view('news/login_success');
				$this->load->view('templates/footer');
				
			}
		else {
			$data['title'] = 'Error in Logging In';	
			$this->load->view('templates/header', $data);
			$this->load->view('news/login_fail');
			$this->load->view('templates/footer');
			}
	}
	
	}
	
	
	public function logout()
	{
		/* logout a user */
  		$data['title'] = 'Logged Out';
		unset($_SESSION['username']);
		unset($_SESSION['is_logged_in']);
		$this->session->sess_destroy();
		$this->load->view('templates/header', $data);
        $this->load->view('news/logout', $data);
        $this->load->view('templates/footer');
   
 	}
	
	
}