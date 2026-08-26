.class Lim/doit/pro/ui/component/DDatePicker$3;
.super Ljava/lang/Object;
.source "DDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/DDatePicker;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/DDatePicker;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/DDatePicker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/DDatePicker$3;->this$0:Lim/doit/pro/ui/component/DDatePicker;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 129
    .local v0, "date":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 130
    iget-object v1, p0, Lim/doit/pro/ui/component/DDatePicker$3;->this$0:Lim/doit/pro/ui/component/DDatePicker;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/DDatePicker;->setCurrentDate(Ljava/util/Calendar;)V

    .line 131
    iget-object v1, p0, Lim/doit/pro/ui/component/DDatePicker$3;->this$0:Lim/doit/pro/ui/component/DDatePicker;

    invoke-static {v1}, Lim/doit/pro/ui/component/DDatePicker;->access$2(Lim/doit/pro/ui/component/DDatePicker;)V

    .line 132
    return-void
.end method
