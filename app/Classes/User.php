<?php

namespace App\Classes;

use Exception;

class User
{
    private int $id;
    private string $username;
    private string $email;
    private string $password;
    private int $role_id;
    private bool $isActive;

    public function __construct(
        int $id,
        string $username,
        string $email,
        string $password,
        int $role_id,
        bool $isActive
    ) {
        $this->id = $id;
        $this->username = $username;
        $this->email = $email;
        $this->password = $password;
        $this->role_id = $role_id;
        $this->isActive = $isActive;
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getUsername(): string
    {
        return $this->username;
    }

    public function getEmail(): string
    {
        return $this->email;
    }

    public function getPassword(): string
    {
        return $this->password;
    }

    public function getRoleId(): int
    {
        return $this->role_id;
    }

    public function getIsActive(): bool
    {
        return $this->isActive;
    }

    public function setId(int $id): void
    {
        $this->id = $id;
    }

    public function setUsername(string $username): void
    {
        $this->username = $username;
    }

    public function setEmail(string $email): void
    {
        $this->email = $email;
    }

    public function setPassword(string $password): void
    {
        $this->password = $password;
    }

    public function setRoleId(int $role_id): void
    {
        $this->role_id = $role_id;
    }

    public function setIsActive(bool $isActive): void
    {
        $this->isActive = $isActive;
    }
}
