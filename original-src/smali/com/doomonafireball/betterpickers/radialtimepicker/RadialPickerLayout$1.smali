.class Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$1;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$1;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$1;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->access$0(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;)Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;

    move-result-object v0

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$1;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->access$1(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 594
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$1;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->access$0(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;)Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->invalidate()V

    .line 595
    return-void
.end method
