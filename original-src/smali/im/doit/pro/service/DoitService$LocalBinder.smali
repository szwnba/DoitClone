.class public Lim/doit/pro/service/DoitService$LocalBinder;
.super Landroid/os/Binder;
.source "DoitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/service/DoitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/service/DoitService;


# direct methods
.method public constructor <init>(Lim/doit/pro/service/DoitService;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lim/doit/pro/service/DoitService$LocalBinder;->this$0:Lim/doit/pro/service/DoitService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lim/doit/pro/service/DoitService;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lim/doit/pro/service/DoitService$LocalBinder;->this$0:Lim/doit/pro/service/DoitService;

    return-object v0
.end method
