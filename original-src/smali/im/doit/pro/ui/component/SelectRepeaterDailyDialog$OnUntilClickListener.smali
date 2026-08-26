.class Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;
.super Ljava/lang/Object;
.source "SelectRepeaterDailyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnUntilClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;)Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 164
    new-instance v0, Lim/doit/pro/ui/component/SelectDateTimeDialog;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->access$4(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;-><init>(Landroid/app/Activity;)V

    .line 165
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectDateTimeDialog;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZZ)V

    .line 166
    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener$1;-><init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnUntilClickListener;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;)V

    .line 174
    return-void
.end method
