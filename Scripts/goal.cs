using Godot;
using System;
using Pachinko.Scripts;

public partial class goal : StaticBody2D
{
    private Score _score;

    public override void _Ready()
    {
        _score = new Score();
    }

    void _on_area_2d_body_entered(ball body)
    {
        GD.Print("Was geht hier ab?");
        GD.Print(body.test);
    }
}
