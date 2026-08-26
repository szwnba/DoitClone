.class Lim/doit/pro/ui/component/DProgressDialog$1;
.super Ljava/lang/Object;
.source "DProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/DProgressDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/DProgressDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/DProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/DProgressDialog$1;->this$0:Lim/doit/pro/ui/component/DProgressDialog;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 132
    iget-object v0, p0, Lim/doit/pro/ui/component/DProgressDialog$1;->this$0:Lim/doit/pro/ui/component/DProgressDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->access$0(Lim/doit/pro/ui/component/DProgressDialog;)Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lim/doit/pro/ui/component/DProgressDialog$1;->this$0:Lim/doit/pro/ui/component/DProgressDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->access$0(Lim/doit/pro/ui/component/DProgressDialog;)Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;->onKeyDown(Landroid/content/DialogInterface;I)V

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
