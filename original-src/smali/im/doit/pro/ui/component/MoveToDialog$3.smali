.class Lim/doit/pro/ui/component/MoveToDialog$3;
.super Ljava/lang/Object;
.source "MoveToDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/MoveToDialog;->showDateTimePicker(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/MoveToDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/MoveToDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/MoveToDialog$3;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 368
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog$3;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    sget-object v1, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/MoveToDialog;->access$5(Lim/doit/pro/ui/component/MoveToDialog;Lim/doit/pro/model/enums/Attribute;)V

    .line 369
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog$3;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v0, p1}, Lim/doit/pro/ui/component/MoveToDialog;->access$6(Lim/doit/pro/ui/component/MoveToDialog;Ljava/util/Calendar;)V

    .line 370
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog$3;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/MoveToDialog;->access$10(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog$3;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/MoveToDialog;->access$10(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog$3;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/MoveToDialog;->access$11(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/model/enums/Attribute;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/ui/component/MoveToDialog$3;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;->finish(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V

    .line 373
    :cond_0
    return-void
.end method
