<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;
use Nette\Application\UI\Presenter;
use Nette\Database\Explorer;
use Nette\Utils\Paginator;
use ette\Database\Table\Selection;


final class BrandPresenter extends Presenter
{
	protected int $defaultPage;
    protected int $defaultItemsPerPage;

	public function __construct(private Explorer $database)
	{
		$this->defaultPage = 1;
        $this->defaultItemsPerPage = 4;
	}

	public function renderAll(int $page = null, int $itemsPerPage = null, string $order = null): void
	{
		$page = $page ?? $this->defaultPage;
		$itemsPerPage = $itemsPerPage ?? $this->defaultItemsPerPage;
		$brands = $this->database->table('brands');
		if($order && in_array(strtoupper($order), ['ASC', 'DESC']))
		{
			$brands->order('name ' . strtoupper($order));
		}
		
		$paginator = new Paginator;
		$paginator->setItemCount(count($brands));
		$paginator->setItemsPerPage($itemsPerPage);
		if($page > $paginator->getLastPage()) $page = $paginator->getLastPage();
		if($page < $paginator->getFirstPage()) $page = $paginator->getFirstPage();
		$paginator->setPage($page);
		$this->template->brands = $brands->page($page, $itemsPerPage);
		$this->template->paginator = $paginator;
		$this->template->page = $page;
		$this->template->itemsPerPage = $itemsPerPage;
		$this->template->order = $order;
	}

	protected function createComponentBrandForm(): Form
	{
		$form = new Form;
		$form->addText('name', 'Název:')->setRequired('Název značky je povinný.');
		$form->addHidden('brandId')->setDefaultValue(0);
		$form->addSubmit('send', 'Uložit');
		$form->onSuccess[] = [$this, 'brandFormSucceeded'];

		return $form;
	}

	public function brandFormSucceeded(form $form, array $data): void
	{
		$brandId = $data['brandId'];
		$action = 'přidána.';
		$page = $this->getParameter('page') ?? 1;
		$itemsPerPage = $this->getParameter('itemsPerPage') ?? 4;
		$order = $this->getParameter('order') ?? null;

		if ($brandId)
		{
			date_default_timezone_set('CET');
			$brand = $this->database
				->table('brands')
				->get($brandId);
			$brand->update(
			[
				'name' 			=> $data['name'],
				'updated_at'	=> date("Y-m-d H:i:s")
			]);
			$action = 'upravena';
		}
		else
		{
			$brand = $this->database
				->table('brands')
				->insert(
				[
					'name' => $data['name']
				]);
		}

		$this->flashMessage('Značka byla úspěšně ' . $action, 'success');
		$this->redirect('Brand:all', $page, $itemsPerPage, $order);
	}

	public function actionDelete(int $id, int $page = null, int $itemsPerPage = null, string $order = null): void
	{
		$page = $page ?? $this->defaultPage;
		$itemsPerPage = $itemsPerPage ?? $this->defaultItemsPerPage;
		//$order = $this->getParameter('order') ?? null;
		// die($order);
		$this->database
			->table('brands')
			->where('id', $id)
			->delete(); 

		$this->flashMessage('Značka byla úspěšně smazána.', 'success');
		$this->redirect('Brand:all', $page, $itemsPerPage, $order);
	}
}
