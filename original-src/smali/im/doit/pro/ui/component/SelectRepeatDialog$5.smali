.class Lim/doit/pro/ui/component/SelectRepeatDialog$5;
.super Ljava/lang/Object;
.source "SelectRepeatDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectRepeatDialog;->onMonthlyClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectRepeatDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$5;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lim/doit/pro/model/Repeater;)V
    .locals 1
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;

    .prologue
    .line 263
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$5;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$10(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$5;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$10(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;

    move-result-object v0

    invoke-interface {v0, p1}, Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;->finish(Lim/doit/pro/model/Repeater;)V

    .line 266
    :cond_0
    return-void
.end method
