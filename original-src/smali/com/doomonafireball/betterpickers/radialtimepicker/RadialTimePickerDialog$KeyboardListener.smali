.class Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$KeyboardListener;
.super Ljava/lang/Object;
.source "RadialTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;


# direct methods
.method private constructor <init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$KeyboardListener;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$KeyboardListener;)V
    .locals 0

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$KeyboardListener;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1002
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$KeyboardListener;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v0, p2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$0(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;I)Z

    move-result v0

    .line 1005
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
