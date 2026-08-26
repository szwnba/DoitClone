.class Lim/doit/pro/ui/component/DTimePicker$1;
.super Ljava/lang/Object;
.source "DTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/DTimePicker;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/DTimePicker;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/DTimePicker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/DTimePicker$1;->this$0:Lim/doit/pro/ui/component/DTimePicker;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v2, p0, Lim/doit/pro/ui/component/DTimePicker$1;->this$0:Lim/doit/pro/ui/component/DTimePicker;

    .line 73
    iget-object v1, p0, Lim/doit/pro/ui/component/DTimePicker$1;->this$0:Lim/doit/pro/ui/component/DTimePicker;

    invoke-static {v1}, Lim/doit/pro/ui/component/DTimePicker;->access$0(Lim/doit/pro/ui/component/DTimePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 74
    iget-object v1, p0, Lim/doit/pro/ui/component/DTimePicker$1;->this$0:Lim/doit/pro/ui/component/DTimePicker;

    invoke-static {v1}, Lim/doit/pro/ui/component/DTimePicker;->access$0(Lim/doit/pro/ui/component/DTimePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, p0, Lim/doit/pro/ui/component/DTimePicker$1;->this$0:Lim/doit/pro/ui/component/DTimePicker;

    invoke-static {v1}, Lim/doit/pro/ui/component/DTimePicker;->access$1(Lim/doit/pro/ui/component/DTimePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-static {v2, v3, v4, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->newInstance(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;IIZ)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    move-result-object v0

    .line 75
    .local v0, "timePickerDialog":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;
    iget-object v1, p0, Lim/doit/pro/ui/component/DTimePicker$1;->this$0:Lim/doit/pro/ui/component/DTimePicker;

    invoke-static {v1}, Lim/doit/pro/ui/component/DTimePicker;->access$2(Lim/doit/pro/ui/component/DTimePicker;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 76
    return-void

    .line 74
    .end local v0    # "timePickerDialog":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
